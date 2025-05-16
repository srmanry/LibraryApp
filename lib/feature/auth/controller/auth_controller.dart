import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mylibrary/feature/dashbord/view/dashobord_screen.dart';
import 'package:mylibrary/feature/home/view/home_screen.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



  void signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String name = nameController.text.trim();
    String phone = phoneController.text.trim();
    String address = addressController.text.trim();
    String dob = dobController.text.trim();

    if (email.isEmpty || password.isEmpty || name.isEmpty || phone.isEmpty || address.isEmpty) {
      Get.snackbar('Error', 'Please fill all the fields!');
      return;
    }
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Error', 'Invalid email format!');
      return;
    }
    if (password.length < 6) {
      Get.snackbar('Error', 'Password must be at least 6 characters long!');
      return;
    }

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      String uid = userCredential.user!.uid;

      await _firestore.collection("users").doc(uid).set({
        "uid": uid,
        "name": name,
        "email": email,
        "phone": phone,
        "address": address,
        "dob": dob,
        "createdAt": FieldValue.serverTimestamp(),
      });

      print("User info saved in Firestore ✅");
      Get.to(() => DashBoardScreenView());
      Get.snackbar('Success', 'User created successfully!');
    } catch (e) {
      Get.snackbar('Error', 'Signup failed! Please try again.');
    }
  }
}
