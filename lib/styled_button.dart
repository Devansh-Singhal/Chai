import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
    });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}