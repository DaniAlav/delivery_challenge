import 'package:delivery_app/src/utils/clip_shadow.dart';
import 'package:delivery_app/src/utils/const.dart';
import 'package:delivery_app/src/widgets/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onPressed;
  final int activeIndex;
  const BottomNavBar({@required this.onPressed, @required this.activeIndex});
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 20.0,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              clip1(size),
              clip2(size),
            ],
          ),
          Positioned(
            left: size.width * 0.1 - 16,
            right: size.width * 0.1 - 16,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _side(size),
                _side2(size),
              ],
            ),
          ),
        _contenedor(size)
        ]));
  }

  Widget _side(Size size) {
    return Row(
      children: [
        SvgPicture.asset('assets/img/home.svg', height: 18.0,),
        SizedBox(
          width: size.width * 0.11 - 16,
        ),
        SvgPicture.asset('assets/img/shop.svg', height: 18.0),
      ],
    );
  }

  Widget _side2(Size size) {
    return Row(
      children: [
        SvgPicture.asset('assets/img/heart.svg', height: 18.0),
        SizedBox(
          width: size.width * 0.11 - 16,
        ),
        CircleAvatar(
          maxRadius: 10,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage('assets/img/pizza.png'),),
        )
      ],
    );
  }

  Widget clip1(Size size) {
    return ClipShadowPath(
      shadow: BoxShadow(
          color: Colors.black.withOpacity(0.07),
          offset: Offset(-4, 2),
          blurRadius: 5,
          spreadRadius: 20),
      clipper: Part1Clipper(),
      child: Container(
        width: size.width * 0.37,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget clip2(Size size) {
    return ClipShadowPath(
      shadow: BoxShadow(
          color: Colors.black.withOpacity(0.07),
          offset: Offset(-4, 2),
          blurRadius: 5,
          spreadRadius: 20),
      clipper: Part2Clipper(),
      child: Container(
        width: size.width * 0.37,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _contenedor(Size size) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: SvgPicture.asset('assets/img/cart.svg'),
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(
            color: Constantes.kPurple, shape: BoxShape.circle
            ),
    );
  }
}

// Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SvgPicture.asset('assets/img/home.svg'),
//             SvgPicture.asset('assets/img/shop.svg'),
//           ],
//         ),

// for (var i =0; i < widget.listaIconos.length; i++)
//           GestureDetector(
//             onTap: () => widget.onPressed(i),
//             child: Text(widget.listaIconos[i],
//             style: TextStyle(
//               fontFamily: 'messageIcon' ,
//               fontSize: 20,
//               color: i == widget.activeIndex
//               ? Color.fromRGBO(255, 158, 87, 1)
//               : Color.fromRGBO(155, 162, 172, 1)
//               )
//             ),
//           ),
