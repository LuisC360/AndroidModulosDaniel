import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

class ConfPage extends StatefulWidget {
  _ConfPageState createState() => _ConfPageState();
}

class _ConfPageState extends State<ResizeImage> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2
      )
    );
    _animation = Tween<double>(begin: 1.0, end: 3.5).animate(_animationController);

    _animation.addListener(() {
      setState(() {});
    });

    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: SingleChildScrollView(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 120.0,),

                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/circulos.png'),
                    )
                  ),
                  child: Animator(

                  ),
                )
              ],
            ),
          ),
        )
      );
    }
  }
}

class ConfirmationPage extends StatelessWidget{
  TextStyle style = TextStyle(
    fontFamily: 'Monserrat',
    fontSize: 20.0,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
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
            'Entendido',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );

    final likeImg = Container(
      height: 250.0,
      width: 250.0,
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/images/like.png')
        )
      )
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 120.0,),

              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: likeImg,
              ),

              SizedBox(height: 25.0,),

              Container(
                child: Text(
                  'Confirmación de compra',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 25.0,),

              Container(
                margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Text(
                  '¡FELICIDADES! Has completado exitosamente tu pedido. En unos momentos mas lo recibirás. Por favor, se paciente.',
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 120.0,),

              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: button,
              ),

              SizedBox(height: 25.0,),
            ],
          ),
        ),
      ),
    );
  }
}