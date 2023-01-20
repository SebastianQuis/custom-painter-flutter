import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      color: Color(0xff615AAB)
    );
  }
}

class HeaderBordesRedondos extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.4,
      decoration: const BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradient(),
      ) 
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill; // stroke = dibuja linea // fill = colorea
    paint.strokeWidth = 2; // tamaño del lapiz // opcional

    // dibujar con el path 
    final path = Path();
    path.moveTo(0, size.height * 0.4); // comenzar con moveTo
    path.lineTo(size.width, size.height * 0.3); // empezar a dibujar
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderTrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // dibujar con el path 
    final path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // dibujar con el path 
    final path = Path();
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderCurvo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // dibujar con el path 
    final path = Path();
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width*0.5,   // posicion de la curva/mitad en x
      size.height*0.6,  // posicion de la curva/mitad en y
      size.width,       // posicion final del lapiz en x
      size.height*0.3); // posicion final del lapiz en y
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // dibujar con el path 
    final path = Path();

    // WAVE-INFERIOR
    path.moveTo(0, size.height);
    path.lineTo(0, size.height*0.7);
    path.quadraticBezierTo(
      size.width*0.25,   // posicion de la curva/mitad en x
      size.height*0.6,  // posicion de la curva/mitad en y
      size.width*0.5,    // posicion final del lapiz en x
      size.height*0.7);  // posicion final del lapiz en y
    path.quadraticBezierTo(
      size.width*0.75,   // posicion de la curva/mitad en x
      size.height*0.8,  // posicion de la curva/mitad en y
      size.width,    // posicion final del lapiz en x
      size.height*0.7);  // posicion final del lapiz en y
    path.lineTo(size.width, size.height);

    // WAVE-SUPERIOR
    // path.lineTo(0, size.height * 0.3);
    // path.quadraticBezierTo(
    //   size.width*0.25,   // posicion de la curva/mitad en x
    //   size.height*0.35,  // posicion de la curva/mitad en y
    //   size.width*0.5,    // posicion final del lapiz en x
    //   size.height*0.3);  // posicion final del lapiz en y
    // path.quadraticBezierTo(
    //   size.width*0.75,   // posicion de la curva/mitad en x
    //   size.height*0.25,  // posicion de la curva/mitad en y
    //   size.width,        // posicion final del lapiz en x
    //   size.height*0.3);  // posicion final del lapiz en y
    // path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWaveGradient extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    final Rect rect = Rect.fromCircle(
      center: Offset(0.0, 55.0),
      radius: 180
    );

    final Gradient gradiente = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xff1d3557),
        Color(0xff457b9d),
        Color(0xffa8dadc),
      ],
      stops: [
        0.1,
        0.4,
        0.8
      ]
    );

    final paint = Paint()..shader = gradiente.createShader(rect);

    // propiedades
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    // dibujar con el path 
    final path = Path();

    // WAVE-INFERIOR
    path.moveTo(0, size.height);
    path.lineTo(0, size.height*0.7);
    path.quadraticBezierTo(
      size.width*0.25,   // posicion de la curva/mitad en x
      size.height*0.6,  // posicion de la curva/mitad en y
      size.width*0.5,    // posicion final del lapiz en x
      size.height*0.7);  // posicion final del lapiz en y
    path.quadraticBezierTo(
      size.width*0.75,   // posicion de la curva/mitad en x
      size.height*0.8,  // posicion de la curva/mitad en y
      size.width,    // posicion final del lapiz en x
      size.height*0.7);  // posicion final del lapiz en y
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

