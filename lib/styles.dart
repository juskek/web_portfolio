import 'package:web_portfolio/index_main.dart';

abstract class Styles {
  // PADDING
  static const double smallPadding = 10;
  static const double largePadding = 30;
  static const TextStyle normalText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontFamily: 'Open Sans',
  );
  static const TextStyle smallText = TextStyle(
    color: Styles.gray,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontFamily: 'Open Sans',
  );
  static const TextStyle boldIntro = TextStyle(
    color: Colors.black,
    fontSize: 50,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontFamily: 'Open Sans',
  );
  static const TextStyle boldIntroCompact = TextStyle(
    color: Colors.black,
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontFamily: 'Open Sans',
  );
  static const TextStyle underIntroCompact = TextStyle(
    color: Colors.black,
    fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    fontFamily: 'Open Sans',
  );
  static const TextStyle boldProj = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontFamily: 'Open Sans',
  );
  static const TextStyle normalProj = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontFamily: 'Open Sans',
  );

  static const Color gray = Color.fromRGBO(142, 142, 147, 1);
  static const Color lightGray = Color.fromRGBO(229, 229, 234, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color extraLightGray = Color.fromRGBO(242, 242, 247, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color backgroundGray = Color.fromRGBO(250, 250, 250, 1);
  static const Color transparent = Colors.transparent;
  // Color.fromRGBO(250, 250, 250, 1);
  // static const Color extraLightGrey = Colors.grey;
  // iOS colors
  // https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/
}
