import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylibrary/feature/accounts/controller/book_controller.dart';

class BookUploadScreenView extends StatelessWidget {
  final BookUploadController controller = Get.put(BookUploadController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Book")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(controller: controller.nameController, decoration: InputDecoration(labelText: "Book Name")),
            TextField(controller: controller.writerController, decoration: InputDecoration(labelText: "Writer Name")),

            DropdownButton<String>(
              value: controller.selectedCategory.value.isEmpty ? null : controller.selectedCategory.value,
              hint: Text("Select Category"),
              onChanged: (value) => controller.selectedCategory.value = value!,
              items: controller.categories.map((cat) => DropdownMenuItem(value: cat, child: Text(cat))).toList(),
            ),

            ElevatedButton.icon(
              onPressed: controller.pickImage,
              icon: Icon(Icons.image),
              label: Text("Select Cover Image"),
            ),

            ElevatedButton.icon(
              onPressed: controller.pickPDF,
              icon: Icon(Icons.picture_as_pdf),
              label: Text("Select PDF File"),
            ),

            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: controller.uploadBook,
                child: Text("Publish Book"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
