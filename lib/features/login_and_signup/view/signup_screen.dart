import 'package:flutter/material.dart';
import 'package:login_screen/features/login_and_signup/widgets/widgets.dart';

class SingUpScreen extends StatelessWidget {
    const SingUpScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: Text('SingUp', style: Theme.of(context).textTheme.titleLarge)
            ),

            body: const InputForm(formType: FormType.signUp),
        );
    }
}
