import 'package:web_portfolio/components/styles/appbar.dart';
import 'package:web_portfolio/index_main.dart';
import 'software_data.dart';

class SoftPage extends StatefulWidget {
  const SoftPage({Key? key}) : super(key: key);

  @override
  _SoftPageState createState() => _SoftPageState();
}

class _SoftPageState extends State<SoftPage> with TickerProviderStateMixin {
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
      body: DashboardScreen('Software Projects (UNDER CONSTRUCTION)', softFeat,
          softOther, _controller, softRadarChartData),
    );
  }
}
