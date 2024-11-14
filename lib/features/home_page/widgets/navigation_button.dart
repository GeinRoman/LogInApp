import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
    final String buttonText;
    final String route;

    const NavigationButton({
        super.key,
        required this.buttonText,
        required this.route,
    });

    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () { Navigator.of(context).pushNamed(route); },
            child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Text(buttonText, style: Theme.of(context).textTheme.bodyMedium),
                    const Icon(
                        Icons.arrow_outward_outlined,
                        size: 40,
                        color: Colors.black,
                    ),
                ],
            ),
        );
    }
}
