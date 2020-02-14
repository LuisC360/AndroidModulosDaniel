import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  TextStyle style = TextStyle(
    fontFamily: 'Monserrat',
    fontSize: 20.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    final loginImage = CircleAvatar(
      radius: 65,
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text(
                  'Perfil',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(height: 95.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Nombre',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  'Daniel Corona',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 25.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Direccion predeterminada',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  'Carlos V #805',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),


              SizedBox(height: 25.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Ciudad',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  'San Luis Potosi',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 25.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Genero',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  'Masculino',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 25.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  'RhoadsBlast@gmail.com',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 25.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Numero de telefono',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: .5, color: Colors.grey)
                    )
                ),
                child: Text(
                  '4448607773',
                  style: style,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 75.0,),
            ],
          ),
        ),
      ),
    );
  }
}