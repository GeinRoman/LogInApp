import 'package:flutter/material.dart';
import 'package:login_screen/features/home_page/widgets/widgets.dart';

class HomePageScreen extends StatelessWidget {

    static const String appName = 'LogIn App';

    const HomePageScreen({super.key});

    @override
    Widget build(BuildContext context) {

        final theme = Theme.of(context);

        return Scaffold(

            appBar: AppBar(
                title: Text(appName, style: theme.textTheme.titleLarge,)
            ),

            body: Center(
                child: Container(
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            NavigationButton(buttonText: 'Log In', route: '/login_screen'),
                            NavigationButton(buttonText: 'Sing Up', route: '/sign_up_screen'),
                        ],
                    ),
                ),
            ),
        ); 
    }
}
