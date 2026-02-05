import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/message.dart';
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
    );
  }
}
