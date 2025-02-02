import 'package:flutter/material.dart';

class MenuIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const MenuIconButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(icon, size: 75),
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.green, width: 2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
