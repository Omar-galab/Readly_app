import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({
    super.key,
    required this.controller,
    required this.onSubmitted,
  });
  
  final TextEditingController controller;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Search',
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () => onSubmitted(controller.text),
          icon: const Opacity(opacity: 0.8, child: Icon(Icons.search)),
        ),
      ),
      onSubmitted: onSubmitted,
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
