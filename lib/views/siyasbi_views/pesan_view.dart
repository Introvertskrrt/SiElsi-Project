import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/siyasbi_controller.dart';

class PesanView extends StatelessWidget {
  PesanView({super.key});

  final SiyasbiController controller = Get.put(SiyasbiController());
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70), // Adjust height as needed
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            title: Text(
              "Pesan",
              style: TextStyleConstant.nunitoSemiBold
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
            backgroundColor:
                Colors.transparent, // Make the AppBar background transparent
            elevation: 0, // Remove shadow if needed
          ),
        ),
      ),
      body: GetBuilder<SiyasbiController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                child: DashChat(
                  currentUser: controller.user,
                  onSend: (ChatMessage message) {
                    controller
                        .sendMessage(message); // Send message via controller
                    _messageController
                        .clear(); // Clear input field after sending
                  },
                  inputOptions: InputOptions(
                    inputDecoration: InputDecoration(
                      hintText: "Type a message...",
                      hintStyle: TextStyleConstant.nunitoRegular.copyWith(
                        fontSize: 14,
                        color: ColorConstant.paragraphTextColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: ColorConstant
                                .paragraphTextColor), // Change border color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: ColorConstant
                                .paragraphTextColor), // Change enabled border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                            color: ColorConstant
                                .paragraphTextColor), // Change focused border color
                      ),
                    ),
                    textController:
                        _messageController, // Use TextEditingController
                    leading: [
                      IconButton(
                        icon: const Icon(Icons.attach_file),
                        onPressed: () async {
                          await controller
                              .pickFile(); // Pick file via controller
                          controller.update(); // Manually trigger update
                        },
                      ),
                    ],
                    sendButtonBuilder: (send) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConstant
                                .primaryColor, // Change send button background color
                            shape: BoxShape.rectangle, // Shape of the button
                            borderRadius:
                                BorderRadius.circular(10), // Rounded corners
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.send,
                                color: Colors.white), // Change send icon color
                            onPressed: () {
                              // Create and send message with text input
                              final text = _messageController.text.trim();
                              if (text.isNotEmpty) {
                                final newMessage = ChatMessage(
                                  text: text,
                                  user: controller.user,
                                  createdAt: DateTime.now(),
                                );
                                controller.sendMessage(newMessage);
                                _messageController
                                    .clear(); // Clear input after sending
                              }
                            },
                          ),
                        ),
                      );
                    },
                  ),

                  messages:
                      controller.messages, // Bind messages from controller
                  messageOptions: MessageOptions(
                    onLongPressMessage: (p0) {
                      Clipboard.setData(ClipboardData(text: p0.text));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Message copied to clipboard'),
                        duration: Duration(seconds: 1),
                      ));
                    },
                    showTime: true,
                    textColor: Colors.black,
                    containerColor: ColorConstant.primaryBackground,
                    showOtherUsersAvatar: true,
                    currentUserContainerColor: ColorConstant.secondaryColor,
                    currentUserTextColor: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
