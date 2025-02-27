import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPartTile extends StatelessWidget {
  final String id;
  final String songId;
  final String text;
  final VoidCallback onPress;
  final VoidCallback onDelete;
  const CustomPartTile({
    super.key,
    required this.text,
    required this.onPress,
    required this.id,
    required this.songId,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.white.withValues(green: 5),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: 380,
          height: 85,
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.menu,
                color: Colors.white,
                size: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                    decoration: TextDecoration.none,
                  ),
                  overflow: TextOverflow.ellipsis, // Prevents overflow issues
                ),
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: onDelete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
