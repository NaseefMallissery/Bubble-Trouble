import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.onTap
  }) : super(key: key);
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, minimumSize: const Size(30, 40)),
      onPressed:onTap,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
