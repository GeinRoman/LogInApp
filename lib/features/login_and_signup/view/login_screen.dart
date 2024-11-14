import 'package:flutter/material.dart';
import 'package:login_screen/features/login_and_signup/widgets/widgets.dart';

class LogInScreen extends StatelessWidget {
    const LogInScreen({super.key});

    @override
    Widget build(BuildContext context) {


        return Scaffold(

            appBar: AppBar(
                title: Text('Log In', style: Theme.of(context).textTheme.titleLarge)
            ),

            body: const InputForm(formType: FormType.logIn),
        );
    }
}
