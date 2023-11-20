import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_outlined,
                ),
                hintText: tEmail,
                labelText: tEmail,
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.fingerprint,
                ),
                hintText: tEmail,
                labelText: tEmail,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(tDefaultSize),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tForgetPassword,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              tForgetPassword,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ModelBottomContainerWidget(btnIcon: Icons.mail_outline_rounded,title: tEmail,subtitle: tResetViaEmail,onTap: () {},),
                            const SizedBox(height: 20,),
                            ModelBottomContainerWidget(btnIcon: Icons.mobile_friendly_outlined,title: "Phone No",subtitle: tResetViaEmail,onTap: () {},),
                          ]),
                    ),
                  );
                },
                child: const Text(tForgetPassword),
              )),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text(tLogin.toUpperCase()))),
        ],
      ),
    ));
  }
}

class ModelBottomContainerWidget extends StatelessWidget {
  const ModelBottomContainerWidget({
    super.key, required this.btnIcon, required this.title, required this.subtitle,required this.onTap,
  });
  
  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        // decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        //     borderRadius: BorderRadius.circular(10)),
        color: Colors.grey.shade200,
        child: Row(children: [
          Icon(btnIcon,size: 60,),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.bodyMedium,),
              Text(subtitle,style: Theme.of(context).textTheme.bodySmall,)
            ],
          )
        ]),
      ),
    );
  }
}
