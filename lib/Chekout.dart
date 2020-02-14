import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modulos_daniel/ArticleBox.dart';

class CheckOutPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return new _CheckOutScreenState();
  }
}

class _CheckOutScreenState extends State<CheckOutPage> {
  TextStyle style = TextStyle(
    fontFamily: 'Monserrat',
    fontSize: 20.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    // Variable que sirve para saber cuantos cuadros de items tenemos en el checkout
    int _items = 0;
    // Lista con las cantidades de cada producto puesto en el checkout
    List<int> _cantidades = [];

    final button = RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        height: 55,
        width: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        padding: const EdgeInsets.fromLTRB(50, 15, 50, 10),
        child: GestureDetector(
          child: const Text(
            'Comprar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Align(
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Align(
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(Icons.crop_portrait),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirmación',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(height: 30.0,),

              // Cajas que contienen la informacion de cada articulo del checkout
              ArticleBox(nombre: 'Lapiz #2', precio: 36.00, imagen: 'assets/images/Imagen39.png', papeleria: 'Lotto.MD', cantidad: 1,),

              // Container con la direccion de envio
              Container(
                
              ),

              // Precios
              Container(
                height: 5.0,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 0.5, color: Colors.grey),
                    )
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Subtotal',
                      style: TextStyle(color: Colors.grey),
                    ),
                    new Text(
                      '\$360.00'
                    ),
                  ],
                )
              ),

              SizedBox(height: 5.0,),

              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Descuento',
                      style: TextStyle(color: Colors.grey),
                    ),
                    new Text(
                      '5%'
                    )
                  ],
                ),
              ),

              SizedBox(height: 5.0,),

              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Envio',
                      style: TextStyle(color: Colors.grey),
                    ),
                    new Text(
                      '\$10.00',
                    ),
                  ],
                ),
              ),

              Container(
                height: 5.0,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.grey),
                    )
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 50),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Total',
                    ),
                    new Text(
                      '\$162.00',
                    )
                  ],
                ),
              ),

              button,

              SizedBox(height: 70.0,)
            ],
          ),
        ),
      ),
    );
  }
}