import 'package:delivery_app/src/models/populares_model.dart';
import 'package:delivery_app/src/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListaPopulares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 260,
      child: ListView.builder(
        // shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: listaPopulares.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _itemPopulares(listaPopulares[index], size),
      ),
    );
  }

  Widget _itemPopulares(Populares populares, Size size) {
    return Padding(
      padding: const EdgeInsets.only( left: 16.0, top: 16.0, bottom: 16.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color:  Color.fromRGBO(0, 0, 0, 0.05),
                  blurRadius: 20.0
                )
              ]
            ),
            width: size.width * 0.4,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 4.0 , bottom: 8.0 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          populares.nombre,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          populares.subName,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 8.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Text(
                          "\$${populares.precio}",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Constantes.kBlue
                          ),
                        )
                      ],
                    ),
            ),
          ),
          Positioned(
            right: 8.0,
            top: 10.0,
            child: SvgPicture.asset('assets/img/heart_empty.svg', width: 15,)
            ),
          Positioned(
              top: 240 * 0.18,
              left: (size.width * 0.4)/5.3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color:  Color.fromRGBO(32, 155, 208, 0.3),
                      blurRadius: 20.0,
                      spreadRadius: 1,
                    )
                  ]
                ),
                width: size.width * 0.25,
                height: size.width * 0.25,
                child: Image(
                  image: AssetImage(populares.image),
                ),
              ),
            ),
          Positioned(
            right: 13.0,
            bottom: 8.0,
            child: Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.all(4.0),
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color:  Colors.black.withOpacity(0.09),
                    blurRadius: 15.0,
                    // spreadRadius: 1,
                  )
                ]
              ),
              child: Icon(Icons.arrow_forward_ios, color: Constantes.kBlue, size: 11.0,),
            ),
          )
        ],
      ),
    );
  }
}
