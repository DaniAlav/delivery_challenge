import 'package:delivery_app/src/models/recomendados_model.dart';
import 'package:delivery_app/src/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListaRecomendados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: 140,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listaRecomendados.length,
        itemBuilder: (context, index) =>
            _listaRecomendados(listaRecomendados[index], size),
      ),
    );
  }

  Widget _listaRecomendados(Recomendados recomendados, Size size) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0,bottom: 16.0, left: 16.0, right: 0.0),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width * 0.66,
            height: 110,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color:  Color.fromRGBO(0, 0, 0, 0.05),
                    blurRadius: 20.0
                  )
                ]
              ),
          ),
          Positioned(
            top: 10.0 ,
            left: 4.0,
            child: Image(
              image: AssetImage(
                recomendados.image
                ),
                width: size.width * 0.3,
                height: 130,
            ),
          ),
          Positioned(
            width: (size.width * 0.66) * 0.45,
            right: 16.0,
            top: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Naturales',
                      style: TextStyle(
                        color: Color.fromRGBO(192, 194, 197, 1),
                        fontFamily: 'Poppins',
                        fontSize: 11.0,
                        fontWeight: FontWeight.w100
                      ),  
                    ),
                    SvgPicture.asset('assets/img/heart_filled.svg', width: 15,)
                  ],
                ),
                SizedBox(height: 12.0,),
                Text(
                  recomendados.nombre,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: Constantes.kBlue
                  ),
                  ),
                  Text(
                    recomendados.subName,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 7.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 2.0,),
                  Text(
                    "\$${recomendados.precio}",
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
          Positioned(
            right: 13.0,
            bottom: 7.0,
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
