// import 'package:web_portfolio/components/portfolio_appbar.dart';
import 'package:web_portfolio/index_main.dart';
import 'package:web_portfolio/pages/software/software_data.dart';

class ExperimentalPage extends StatefulWidget {
  const ExperimentalPage({Key? key}) : super(key: key);

  @override
  _ExperimentalPageState createState() => _ExperimentalPageState();
}

class _ExperimentalPageState extends State<ExperimentalPage>
    with TickerProviderStateMixin {
  int nodes = 5;
  int segments = 4;
  List<double> data = [0.7, 0.6, 0.5, 0.8, 0.75];
  List<String> labels = ['A', 'B', 'C', 'D', 'E'];

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 3), // ANITIME
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: underConstruction(context),
      // body: Center(child: RadarChartTransition(_controller, radarChartData)),
    );
  }
}
