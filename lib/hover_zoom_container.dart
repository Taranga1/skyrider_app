import 'package:flutter/material.dart';

class HoverZoomContainer extends StatefulWidget {
  final String title;
  final String backgroundImage;
  final double height;
  final double width;

  HoverZoomContainer(
      {required this.title,
      required this.width,
      required this.height,
      required this.backgroundImage});

  @override
  _HoverZoomContainerState createState() => _HoverZoomContainerState();
}

class _HoverZoomContainerState extends State<HoverZoomContainer> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.backgroundImage),
            fit: BoxFit.cover,
            alignment: _hovering ? Alignment.topCenter : Alignment.center,
            scale: _hovering ? 1.2 : 1.0,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
