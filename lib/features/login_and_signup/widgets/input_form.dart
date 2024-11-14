import 'package:flutter/material.dart';
import 'package:login_screen/login_app.dart';
import 'input_line.dart';

enum FormType { logIn, signUp }

class InputForm extends StatelessWidget {
    const InputForm ({super.key, required this.formType});

    final FormType formType;

    @override
    Widget build(BuildContext context) {

        final String buttonName;
        if (formType == FormType.logIn) {
            buttonName = 'LogIn'; 
        } else {
            buttonName = 'SignUp'; 
        }

        final loginFieldController = TextEditingController();
        final passwordFieldController = TextEditingController();

        return Center(
            child: Container(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                InputLine(hintText: 'login', controller: loginFieldController),
                                InputLine(hintText: 'password', controller: passwordFieldController),
                            ],
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: (){
                                    final accounts = AccountsMap.of(context).accounts;
                                    if(formType == FormType.logIn){
                                        if(accounts[loginFieldController.text] == passwordFieldController.text){
                                            Navigator.of(context).pushNamed('/success_screen'); 
                                        }
                                    } else {
                                        accounts[loginFieldController.text] = passwordFieldController.text;
                                    }
                                },
                                child: Text(buttonName),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
