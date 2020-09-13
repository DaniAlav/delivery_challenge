import 'package:flutter/material.dart';

class Part1Clipper extends CustomClipper<Path>{
    
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 147.34;
    final double _yScaling = size.height / 68;
    path.lineTo(20 * _xScaling,68 * _yScaling);
    path.cubicTo(20 * _xScaling,68 * _yScaling,147.339 * _xScaling,68 * _yScaling,147.339 * _xScaling,68 * _yScaling,);
    path.cubicTo(139.061 * _xScaling,59.0784 * _yScaling,134 * _xScaling,47.1302 * _yScaling,134 * _xScaling,34 * _yScaling,);
    path.cubicTo(134 * _xScaling,20.8698 * _yScaling,139.061 * _xScaling,8.92157 * _yScaling,147.339 * _xScaling,0 * _yScaling,);
    path.cubicTo(147.339 * _xScaling,0 * _yScaling,20 * _xScaling,0 * _yScaling,20 * _xScaling,0 * _yScaling,);
    path.cubicTo(8.95435 * _xScaling,0 * _yScaling,0 * _xScaling,8.95428 * _yScaling,0 * _xScaling,20 * _yScaling,);
    path.cubicTo(0 * _xScaling,20 * _yScaling,0 * _xScaling,48 * _yScaling,0 * _xScaling,48 * _yScaling,);
    path.cubicTo(0 * _xScaling,59.0457 * _yScaling,8.95435 * _xScaling,68 * _yScaling,20 * _xScaling,68 * _yScaling,);
    path.cubicTo(20 * _xScaling,68 * _yScaling,20 * _xScaling,68 * _yScaling,20 * _xScaling,68 * _yScaling,);
    return path;
  }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
        return true;
  }

  }

  class Part2Clipper extends CustomClipper<Path>{
    
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 147.34;
    final double _yScaling = size.height / 68;
    path.lineTo(14 * _xScaling,34 * _yScaling);
    path.cubicTo(14 * _xScaling,47.1302 * _yScaling,8.93872 * _xScaling,59.0784 * _yScaling,0.660889 * _xScaling,68 * _yScaling,);
    path.cubicTo(0.660889 * _xScaling,68 * _yScaling,128 * _xScaling,68 * _yScaling,128 * _xScaling,68 * _yScaling,);
    path.cubicTo(139.046 * _xScaling,68 * _yScaling,148 * _xScaling,59.0457 * _yScaling,148 * _xScaling,48 * _yScaling,);
    path.cubicTo(148 * _xScaling,48 * _yScaling,148 * _xScaling,20 * _yScaling,148 * _xScaling,20 * _yScaling,);
    path.cubicTo(148 * _xScaling,8.95428 * _yScaling,139.046 * _xScaling,0 * _yScaling,128 * _xScaling,0 * _yScaling,);
    path.cubicTo(128 * _xScaling,0 * _yScaling,0.660889 * _xScaling,0 * _yScaling,0.660889 * _xScaling,0 * _yScaling,);
    path.cubicTo(8.93872 * _xScaling,8.92157 * _yScaling,14 * _xScaling,20.8698 * _yScaling,14 * _xScaling,34 * _yScaling,);
    path.cubicTo(14 * _xScaling,34 * _yScaling,14 * _xScaling,34 * _yScaling,14 * _xScaling,34 * _yScaling,);
    return path;
  }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
        return true;
  }

  }