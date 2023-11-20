import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginFormFooter extends StatelessWidget {
  const LoginFormFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            label: const Text(tSignInWithGoogle),
            // : TOutlinedButtonTheme.lightOutlinedButtonTheme,
            icon: const Image(
              image: AssetImage(tGoogleLogo),
              width: 20,
            ),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(
              TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(text: tSignUp,style: TextStyle(color: Colors.blue[600]))
                  ]
                ),
            ),
          )
      ],
    );
  }
}
