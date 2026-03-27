import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PressableCard extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const PressableCard({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  State<PressableCard> createState() => _PressableCardState();
}

class _PressableCardState extends State<PressableCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() => _isPressed = true);
        HapticFeedback.lightImpact();
      },
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.96 : 1.0,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _isPressed ? 0.02 : 0.05),
                blurRadius: _isPressed ? 4 : 15,
                offset: Offset(0, _isPressed ? 2 : 8),
              ),
            ],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
