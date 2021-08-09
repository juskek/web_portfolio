import 'package:web_portfolio/index_main.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  _UnknownPageState createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: Styles.largeBorderPadding,
              decoration: BoxDecoration(border: Styles.thickBorder),
              child: Text(
                '404: PAGE NOT FOUND',
                style: Styles.boldIntro,
                textAlign: TextAlign.center,
              ),
            ),
            Container(height: Styles.largePadding),
            Text(
              "SOMETHING WENT WRONG.\nCOULD BE ME.\nCOULD BE YOU.\nIF YOU ARE UNSURE,\nHERE'S WHAT YOU CAN DO.",
              style: Styles.normalSubtleText,
              textAlign: TextAlign.center,
            ),
            Container(height: Styles.largePadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  child: Container(
                    padding: Styles.smallBorderPadding,
                    child: Text(
                      'GO HOME',
                      style: Styles.normalText,
                    ),
                  ),
                ),
                Container(width: Styles.smallPadding),
                OutlinedButton(
                  onPressed: launchReport,
                  child: Container(
                    padding: Styles.smallBorderPadding,
                    child: Text(
                      'REPORT IT',
                      style: Styles.normalText,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
