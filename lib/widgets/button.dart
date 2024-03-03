import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? color;

  const Button(
      {super.key,
      required this.onPressed,
      required this.child,
      this.color,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        textStyle: TextStyle(
          fontSize: 28,
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Center(
          child: DefaultTextStyle.merge(
        style: TextStyle(color: color ?? Theme.of(context).colorScheme.primary),
        child: child,
      )),
    );
  }
}
