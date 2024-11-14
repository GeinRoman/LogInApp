import 'package:flutter/material.dart';
import 'package:login_screen/router/router.dart';
import 'package:login_screen/themes/theme.dart';

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    static const String appName = 'LoginApp';

    @override
    Widget build(BuildContext context) {
        return AccountsMap(
            accounts: {},
            child: MaterialApp(
                title: 'LoginApp',
                theme: mainTheme,
                routes: routes,
            )
        );
    }
}

class AccountsMap extends InheritedWidget {
  const AccountsMap({
    super.key,
    required this.accounts,
    required super.child,
  });

  final Map<String, String> accounts;

  static AccountsMap? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AccountsMap>();
  }

  static AccountsMap of(BuildContext context) {
    final AccountsMap? result = maybeOf(context);
    return result!;
  }

  @override
  bool updateShouldNotify(AccountsMap oldWidget) => oldWidget.accounts != accounts;
}
