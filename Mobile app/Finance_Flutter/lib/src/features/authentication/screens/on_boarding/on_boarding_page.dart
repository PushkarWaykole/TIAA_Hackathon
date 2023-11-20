import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
              image: AssetImage(model.image), height: size.height * 0.5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                model.subtitle,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

