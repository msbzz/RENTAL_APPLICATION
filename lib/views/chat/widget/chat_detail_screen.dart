import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/message.dart';
import 'package:rental_application/views/chat/widget/message_buble.dart';
import 'package:rental_application/views/home/widgets/home_app_bar.dart';

class ChatDetailScreen extends StatefulWidget {
  final Message message;
  const ChatDetailScreen({super.key, required this.message});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primary.withValues(alpha: 0.1),
              child: Text(
                widget.message.senderId == '2'
                    ? widget.message.recieverName[0]
                    : widget.message.senderName[0],
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              widget.message.senderId == '2'
                  ? widget.message.recieverName
                  : widget.message.senderName,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: EdgeInsets.all(16.w),
              itemCount: 10,
              itemBuilder: (context, index) {
                final bool isMe = index % 2 == 0;
                return MessageBubble(
                  message: 'This is a simple message $index',
                  timestamp: DateTime.now(),
                  isMe: isMe,
                );
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: EdgeInsets.all(
        16.w,
      ).copyWith(bottom: 16.h + MediaQuery.of(context).viewInsets.bottom),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
    );
  }
}
