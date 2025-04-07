import 'package:flutter/material.dart';
import 'package:test_task_flutter/domain/entity/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final VoidCallback onTap;

  const PostCard({super.key, required this.post, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => onTap(),
        child: Ink(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: TextStyle(
                  fontSize: 18, //
                ),
              ),
              SizedBox(height: 8),
              Text(
                post.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis, //
              ),
            ],
          ),
        ),
      ),
    );
  }
}
