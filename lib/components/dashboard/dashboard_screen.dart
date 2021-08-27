import 'package:web_portfolio/index_main.dart';

class DashboardScreen extends StatelessWidget {
  final _featCards;
  final _otherCards;

  const DashboardScreen(featCards, otherCards)
      : _featCards = featCards,
        _otherCards = otherCards;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(Styles.smallPadding),
        child: Column(
          children: [
            // ! Could not find provider above header widget
            // Header(),
            SizedBox(height: Styles.smallPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      FeaturedFiles(_featCards),
                      SizedBox(height: Styles.smallPadding),
                      // RecentFiles(_otherCards),
                      if (Responsive.isMobile(context))
                        SizedBox(height: Styles.smallPadding),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: Styles.smallPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
