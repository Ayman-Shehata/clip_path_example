import 'package:flutter/material.dart';

class ClipPathScreenWithItem extends StatelessWidget {
  const ClipPathScreenWithItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ClipPath'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  GridItem(
                      image: AssetImage('images/laptop.jpg'),
                      customClipper: myShape1()),
                  GridItem(
                      image: AssetImage('images/product.jpg'),
                      customClipper: myShape()),
                  GridItem(
                      image: AssetImage('images/led.jpg'),
                      customClipper: myShape2()),
                ],
              ),
            ),
          ],
        ));
  }
}

class myShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();
    path.moveTo(w * 1 / 9, 0);

    path.lineTo(0, h);
    path.lineTo(w * 8 / 9, h);
    path.lineTo(w, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class myShape1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    // remove Move step
    path.lineTo(0, h);
    path.lineTo(w * 8 / 9, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class myShape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(w * 1 / 9, 0);
    path.lineTo(0, h);
    path.lineTo(w, h); // edited
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget GridItem({
  required ImageProvider image,
  required CustomClipper<Path> customClipper,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: ClipPath(
      clipper: customClipper,
      child: Image(
        image: image,
        fit: BoxFit.fill,
      ),
    ),
  );
}
