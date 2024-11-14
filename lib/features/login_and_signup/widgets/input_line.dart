import 'package:flutter/material.dart';

class InputLine extends StatelessWidget {
    const InputLine({
        super.key,
        required this.hintText,
        required this.controller,
    });

    final String hintText;
    final TextEditingController controller;

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: hintText,
                    constraints: const BoxConstraints(maxWidth: 150),
                ),
            ),
        );
    }
}
