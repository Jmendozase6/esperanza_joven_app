import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataItem extends StatelessWidget {
  const DataItem({
    super.key,
    required this.title,
    required this.value,
    this.avatar = '',
  });

  final String title;
  final String value;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title:'),
          Chip(
            label: Text(value),
            avatar: avatar.isNotEmpty
                ? CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
