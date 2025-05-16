import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

class BookUploadController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController writerController = TextEditingController();
  final RxString selectedCategory = ''.obs;

  File? imageFile;
  File? pdfFile;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  final List<String> categories = ['Science', 'Fiction', 'Religion', 'History', 'Others'];

  Future pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) imageFile = File(picked.path);
  }

  Future pickPDF() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result != null) pdfFile = File(result.files.single.path!);
  }

  Future uploadBook() async {
    if (nameController.text.isEmpty || writerController.text.isEmpty || selectedCategory.value.isEmpty || imageFile == null || pdfFile == null) {
      Get.snackbar("Error", "All fields are required");
      return;
    }

    try {
      final id = Uuid().v4();

      final imageRef = _storage.ref().child("books/$id/cover.jpg");
      final pdfRef = _storage.ref().child("books/$id/book.pdf");

      final imageUploadTask = await imageRef.putFile(imageFile!);
      final pdfUploadTask = await pdfRef.putFile(pdfFile!);

      final imageUrl = await imageUploadTask.ref.getDownloadURL();
      final pdfUrl = await pdfUploadTask.ref.getDownloadURL();

      await _firestore.collection("books").doc(id).set({
        "id": id,
        "name": nameController.text.trim(),
        "writer": writerController.text.trim(),
        "category": selectedCategory.value,
        "coverUrl": imageUrl,
        "pdfUrl": pdfUrl,
        "timestamp": FieldValue.serverTimestamp()
      });

      Get.back();
      Get.snackbar("Success", "Book uploaded successfully!");
    } catch (e) {
      Get.snackbar("Upload Failed", e.toString());
    }
  }
}
