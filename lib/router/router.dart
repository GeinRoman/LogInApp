import 'package:login_screen/features/home_page/view/home_page_screen.dart';
import 'package:login_screen/features/login_and_signup/view/view.dart';
import 'package:login_screen/features/success/view/success_screen.dart';

final routes = {
    '/': (context) => const HomePageScreen(),
    '/sign_up_screen': (context) => const SingUpScreen(),
    '/login_screen': (context) => const LogInScreen(),
    '/success_screen': (context) => const SuccessScreen()
};
