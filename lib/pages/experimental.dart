import 'package:web_portfolio/components/portfolio_appbar.dart';
import 'package:web_portfolio/index_main.dart';

class ExperimentalPage extends StatefulWidget {
  const ExperimentalPage({Key? key}) : super(key: key);

  @override
  _ExperimentalPageState createState() => _ExperimentalPageState();
}

class _ExperimentalPageState extends State<ExperimentalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: SafeArea(
        // TODO: exception here ParentWidget
        // child: Text('test')
        child: DashboardScreen(),
        // Container(
        //   color: Styles.backgroundGray,
        //   child: DashboardScreen(),
        // ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
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
                      FeaturedFiles(),
                      SizedBox(height: Styles.smallPadding),
                      RecentFiles(),
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
