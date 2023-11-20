import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginFormheader extends StatelessWidget {
  // const LoginFormheader({
  //   super.key,
  //   required this.size,
  // });
  const LoginFormheader({super.key, required this.imgStr, required this.title, required this.subtitle});
  final String imgStr, title, subtitle;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(children: [
      Image(
        image: AssetImage(imgStr),
        height: size.height * 0.3,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ]);
  }
}