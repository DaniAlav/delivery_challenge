import 'package:delivery_app/src/utils/const.dart';
import 'package:delivery_app/src/widgets/bottom_nav_bar.dart';
import 'package:delivery_app/src/widgets/listaCategorias.dart';
import 'package:delivery_app/src/widgets/lista_populares.dart';
import 'package:delivery_app/src/widgets/lista_recomendados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(
        activeIndex: navIndex,
        onPressed: (navIndex){
        },
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                _appBar(size),
                SizedBox(height: 35),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _titleListaCategorias(),
                      SizedBox(
                        height: 19.0,
                      ),
                      ListaCategorias(),
                      SizedBox(
                        height: 35.0,
                      ),
                      _titlePopulares(),
                      ListaPopulares(),
                       SizedBox(
                        height: 10.0,
                      ),
                      _titleRecomendados(),
                       SizedBox(
                        height: 2.0,
                      ),
                      ListaRecomendados(),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),

                // _listaCategorias(size)
              ]))
            ],
          )
        ],
      ),
    );
  }


  Widget _appBar(Size size) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(230, 230, 230, 1),
            blurRadius: 20.0,
            offset: Offset(0, 0),
          )
        ]),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: size.width * 0.31, child: _input()),
            _title(),
            SizedBox(width: size.width * 0.31, child: _icons()),
          ],
        ),
      ),
    );
  }

  Widget _input() {
    return TextField(
        cursorColor: Constantes.kPurple,
        cursorWidth: 1.0,
        focusNode: FocusNode(canRequestFocus: false),
        style: TextStyle(
            color: Constantes.kPurple,
            fontSize: 12.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.5),
        decoration: InputDecoration(
            hintText: 'Buscar',
            hintStyle: TextStyle(
              color: Color.fromRGBO(226, 237, 242, 1),
              fontSize: 12.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(start: 10.0, end: 8.0),
              child: SvgPicture.asset('assets/img/search.svg'),
            ),
            isDense: true,
            prefixIconConstraints: BoxConstraints.tightFor(height: 12),
            contentPadding:
                EdgeInsets.only(top: 9, bottom: 9, left: 10, right: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                    color: Color.fromRGBO(226, 237, 242, 1),
                    width: 1,
                    style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color.fromRGBO(226, 237, 242, 1),
                    width: 1,
                    style: BorderStyle.solid)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                    color: Color.fromRGBO(226, 237, 242, 1),
                    width: 1,
                    style: BorderStyle.solid))));
  }

  Widget _icons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          'assets/img/notification.svg',
          width: 19.0,
        ),
        SizedBox(
          width: 15.0,
        ),
        SvgPicture.asset('assets/img/offer.svg', width: 19.0),
      ],
    );
  }

  Widget _title() {
    return Text(
      'Inicio',
      style: TextStyle(
          color: Constantes.kPurple,
          fontFamily: 'Poppins',
          fontSize: 22.0,
          fontWeight: FontWeight.w600),
    );
  }

  Widget _titleListaCategorias() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explorar categorias',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Constantes.kBlue,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
          Text(
            'Ver todos',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Constantes.kGrey,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _titlePopulares() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Productos populares',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Constantes.kBlue,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _titleRecomendados() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Recomendados',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Constantes.kBlue,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}



  
