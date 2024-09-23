import 'dart:io';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class SiyasbiController extends GetxController {
  var messages = <ChatMessage>[].obs;

  final ChatUser user = ChatUser(id: "123", firstName: "User");
  final ChatUser bot = ChatUser(id: "456", firstName: "Bot");

  // Function to send a new message
  void sendMessage(ChatMessage message) {
    messages.insert(0, message); // Add the latest message to the list
    update(); // Update the UI
  }

  // Function to pick files (including images, videos, and documents)
  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, // Allow picking any type of file
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      String? extension = result.files.single.extension?.toLowerCase();

      // Determine the media type (image, video, or other file types)
      List<ChatMedia>? media;

      if (extension != null) {
        if (extension.contains('jpg') || extension.contains('png')) {
          // Image file type
          media = [
            ChatMedia(
              url: file.path,
              fileName: result.files.single.name,
              type: MediaType.image,
            )
          ];
        } else if (extension.contains('mp4') || extension.contains('avi')) {
          // Video file type
          media = [
            ChatMedia(
              url: file.path,
              fileName: result.files.single.name,
              type: MediaType.video,
            )
          ];
        } else {
          // Other file types (e.g., PDF, DOCX, etc.)
          media = [
            ChatMedia(
              url: file.path,
              fileName: result.files.single.name,
              type: MediaType.file, // Treat as generic file type
            )
          ];
        }
      }

      // Create a new message with the file, but without including the file name in the text
      final newMessage = ChatMessage(
        text: '', // Empty text for file messages
        user: user,
        createdAt: DateTime.now(),
        customProperties: {'file_path': file.path}, // Attach file path
        medias: media, // Add media to the message
      );

      sendMessage(newMessage);
    }
  }

  // Function to pick images using the image picker
  Future<void> pickImage() async {
    // Request permission to access media storage
    var status = await Permission.photos.request();

    if (status.isGranted) {
      // If permission is granted, proceed to pick image
      final ImagePicker picker = ImagePicker();
      final XFile? pickedImage =
          await picker.pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        File imageFile = File(pickedImage.path);

        // Create a new message with the image
        final newMessage = ChatMessage(
          text: "Image",
          user: user,
          createdAt: DateTime.now(),
          medias: [
            ChatMedia(
              url: imageFile.path,
              fileName: pickedImage.name,
              type: MediaType.image, // Set as image type
            )
          ],
        );

        sendMessage(newMessage); // Send the image message
      }
    } else {
      PermissionStatus status = await Permission.photos.request();

      if (status.isGranted) {
        return;
      } else if (status.isDenied) {
        Get.snackbar(
          'Permission Denied',
          'Please allow notification permission to use this app',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else if (status.isPermanentlyDenied) {}
    }
  }
}
