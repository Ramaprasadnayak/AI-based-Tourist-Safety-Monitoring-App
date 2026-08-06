import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final double height, width,borderRadius;
  final String text;
  final void Function()? onpressed;
  final bool icon;
  final IconData? sufixicon;
  final List<Color> color;
  final Color boxshadow,bordercolor;
  const Button({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.onpressed,
    this.bordercolor=Colors.transparent,
    this.icon=false,
    this.borderRadius=30,
    this.boxshadow=const Color(0xFF1E63E9),
    this.color=const[Color(0xFF2F80ED), Color(0xFF1E5BD8)],
    this.sufixicon
  });
  @override
  State<StatefulWidget> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.bordercolor,
            width: 2
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: [
            BoxShadow(
              color: widget.boxshadow.withValues(alpha: 0.30),
              blurRadius: 15,
              offset: const Offset(0, 6),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: widget.color,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 4),
              if (widget.icon && widget.sufixicon != null)
              Icon(widget.sufixicon,color: Colors.white,size: 16),
            ],
          ),
        ),
      ),
    );
  }
}