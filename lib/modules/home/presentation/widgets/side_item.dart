import 'package:flutter/material.dart';

class SideItem extends StatelessWidget {
  const SideItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.selected = false,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: selected
              ? Colors.blueAccent.withOpacity(0.15)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, color: selected ? Colors.blueAccent : Colors.white54),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(color: selected ? Colors.white : Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
