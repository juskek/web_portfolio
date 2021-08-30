import 'package:web_portfolio/index_main.dart';

class DashboardScreen extends StatelessWidget {
  final String _headerTitle;
  final _featCards;
  final _otherCards;
  final AnimationController _controller;
  final RadarChartData _radarChartData;

  const DashboardScreen(
      headerTitle, featCards, otherCards, controller, radarChartData)
      : _headerTitle = headerTitle,
        _featCards = featCards,
        _otherCards = otherCards,
        _controller = controller,
        _radarChartData = radarChartData;
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
                      Text(_headerTitle, style: Styles.boldIntroCompact),
                      FeaturedProjects(_featCards),
                      SizedBox(height: Styles.smallPadding),
                      OtherProjects(_otherCards),
                      if (Responsive.isMobile(context))
                        SizedBox(height: Styles.smallPadding),
                      if (Responsive.isMobile(context))
                        BreakdownProjects(_controller, _radarChartData),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: Styles.smallPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: BreakdownProjects(_controller, _radarChartData),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
