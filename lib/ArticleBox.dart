import 'package:flutter/material.dart';

class ArticleBox extends StatelessWidget{
  final String nombre;
  final double precio;
  final String imagen;
  final String papeleria;
  final int cantidad;

  ArticleBox({@required this.nombre, @required this.precio, @required this.imagen, @required this.papeleria, @required this.cantidad});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: new Container(
        decoration: BoxDecoration(
          border: new Border.all(
              color: Colors.grey,
              width: 0.5,
              style: BorderStyle.solid
          ),
          borderRadius: new BorderRadius.all(Radius.circular(10.0)),
        ),

        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  '$imagen',
                  height: 109,
                  width: 109,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 20,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '$nombre',
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '$papeleria',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
                  child: Text(
                    'Cantidad: $cantidad',
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\$${precio.toString()}',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  )
                ),
              ],
            ),

            SizedBox(width: 40,),

            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.close),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}