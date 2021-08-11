import 'package:web_portfolio/index_main.dart';

// CONTAINERS
Widget headerTextContainer(String textString) {
  return Container(
    padding: Styles.largeBorderPadding,
    decoration: BoxDecoration(border: Styles.thickBorder),
    child: Text(
      textString,
      style: Styles.boldIntro,
      textAlign: TextAlign.center,
    ),
  );
}

abstract class Styles {
  // PADDING
  static const double smallPadding = 10;
  static const double largePadding = 30;

  static const EdgeInsets smallBorderPadding = EdgeInsets.all(smallPadding);
  static const EdgeInsets largeBorderPadding = EdgeInsets.all(largePadding);

  // BORDERS
  static Border thickBorder = Border.all(color: Styles.black, width: 4);
  static Border thinBorder = Border.all(color: Styles.black, width: 2);

  // BOX DECORATIONS
  static BoxDecoration mainBoxDecoration = BoxDecoration(
    color: Styles.white,
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 5,
        offset: Offset(0, 3),
      )
    ],
  );

  // PIE CHART
  static const double pieChartRadius = 20;
  static const Color pieChartColor0 = Color.fromRGBO(166, 255, 235, 1);
  static const Color pieChartColor1 = Color.fromRGBO(179, 228, 252, 1);
  static const Color pieChartColor2 = Color.fromRGBO(128, 222, 234, 1);
  static const Color pieChartColor3 = Color.fromRGBO(78, 195, 247, 1);
  static const Color pieChartColor4 = Color.fromRGBO(37, 198, 218, 1);
  static const Color pieChartColor5 = Color.fromRGBO(1, 172, 193, 1);
  static const Color pieChartColor6 = Color.fromRGBO(1, 151, 166, 1);
  static const Color pieChartColor7 = Color.fromRGBO(0, 188, 212, 1);
  static const Color pieChartColor8 = Color.fromRGBO(1, 131, 143, 1);
  static const Color pieChartColor9 = Color.fromRGBO(1, 96, 100, 1);

  // TEXT
  static const TextStyle normalText = TextStyle(
    color: Styles.black,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontFamily: 'Open Sans',
  );
  static const TextStyle normalSubtleText = TextStyle(
    color: Styles.gray,
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
