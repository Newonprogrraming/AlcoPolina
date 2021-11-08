import 'package:flutter/material.dart';

class ReusableCardColor extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final Color color;

  const ReusableCardColor({
    Key? key,
    required this.color,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
        ),
      ),
    );
  }
}
