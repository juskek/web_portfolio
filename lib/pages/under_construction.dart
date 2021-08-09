import 'package:web_portfolio/index_main.dart';

Widget underConstruction(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: Styles.largeBorderPadding,
          decoration: BoxDecoration(border: Styles.thickBorder),
          child: Text(
            'UNDER CONSTRUCTION',
            style: Styles.boldIntro,
            textAlign: TextAlign.center,
          ),
        ),
        Container(height: Styles.largePadding),
        Text(
          "I'M CURRENTLY WORKING ON IT!\nPLEASE CHECK BACK IN LATER :)",
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
          ],
        )
      ],
    ),
  );
}
