import 'package:alkometrforpolina/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Function() onTap;

  const ReusableCard({
    Key? key,
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
        decoration: const BoxDecoration(
          color: kLableStyle,
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
      ),
    );
  }
}
