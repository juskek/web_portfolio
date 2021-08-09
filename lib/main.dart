/// ===========================================================================
/// WEB PORTFOLIO
///
/// ===========================================================================

import 'package:web_portfolio/index_main.dart';

// IMAGE SIZE
// double projImageSize = MediaQuery.of(context).size.width;

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

// MAIN FUNCTION
void main() {
  runApp(WebPortfolio());
}

// MAIN CLASS
class WebPortfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Justin Kek',
      // theme: ThemeData(primaryColor: Styles.white,primarySwatch: Styles.extraLightGray,),
      home: HomePage(title: 'JUSTIN KEK'),
    );
  }
}
