/*
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylibrary/feature/accounts/controller/book_controller.dart';


class BookUplodeScreenView extends StatelessWidget {
  BookUplodeScreenView({Key? key}) : super(key: key);

  final BookUploadController controller = Get.put(BookUploadController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Publish your Book")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Book Name
            TextField(
              controller: controller.bookNameController,
              decoration: InputDecoration(
                hintText: "Book Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            // Writer Name
            TextField(
              controller: controller.writerNameController,
              decoration: InputDecoration(
                hintText: "Writer Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            // Book Cover Photo Picker
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Book Cover Photo"),
            ),
            const SizedBox(height: 8),

            Obx(() {
              if (controller.pickedImagePath.value.isEmpty) {
                return GestureDetector(
                  onTap: () => controller.pickImage(),
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.photo_camera, size: 50),
                  ),
                );
              } else {
                return GestureDetector(
                  onTap: () => controller.pickImage(),
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: FileImage(File(controller.pickedImagePath.value)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }
            }),

            const SizedBox(height: 16),

            // Book Type
            TextField(
              controller: controller.bookTypeController,
              decoration: InputDecoration(
                hintText: "Book Type",
                suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            // Publish Button
            ElevatedButton(
              onPressed: () => controller.publishBook(),
              child: const Text("Publish"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45), backgroundColor: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
