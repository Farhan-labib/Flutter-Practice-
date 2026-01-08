import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onPressed;
  final String text;
  final ButtonStyle? style;

  const LoadingButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: onPressed,
              style: style,
              child: Text(text),
            ),
    );
  }
}
