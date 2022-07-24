<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://github.com/Ayman-Shehata/clip_path_example/blob/master/screenshots/logo.png?raw=true" alt="Project logo"></a>
</p>

<h3 align="center">Flutter Clippath Example</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
<!-- [![GitHub Issues](https://img.shields.io/github/issues/Ayman-Shehata/The-Documentation-Compendium.svg)](https://github.com/Ayman-Shehata/clip_path_example/issues) -->
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/Ayman-Shehata/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---


## 📝 Table of Contents

- [About](#about)
- [code](#code)
- [TODO](../TODO.md)
<!-- - [Contributing](../CONTRIBUTING.md) -->
- [Authors](#authors)
<!-- - [Acknowledgments](#acknowledgement) -->


![alt text](https://github.com/Ayman-Shehata/clip_path_example/blob/master/screenshots/logo.png?raw=true)


## 🧐 About <a name = "about"></a>

An updated ripo about clippath with flutter .

## 🏁 Code <a name = "code"></a>

First image (left) with straight line.

```
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
```

Second image (Center).

```
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
```

Third image (right).

```
class myShape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(w * 1 / 9, 0);
    path.lineTo(0, h);
    path.lineTo(w , h); // edited
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
```

## ✍️ Authors <a name = "authors"></a>

- [@Ayman-Shehata](https://github.com/Ayman-Shehata) 

