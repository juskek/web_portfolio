import 'package:flutter/scheduler.dart';
import 'package:web_portfolio/index_main.dart';
import 'mechanical_data.dart';

class MechPage extends StatefulWidget {
  const MechPage({Key? key}) : super(key: key);

  @override
  _MechPageState createState() => _MechPageState();
}

class _MechPageState extends State<MechPage> with TickerProviderStateMixin {
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
      body: DashboardScreen('Mechanical Projects (UNDER CONSTRUCTION)',
          mechFeat, mechOther, _controller, mechRadarChartData),
    );
  }
}
