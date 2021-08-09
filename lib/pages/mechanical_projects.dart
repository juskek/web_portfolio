import 'package:web_portfolio/index_main.dart';

class MechPage extends StatefulWidget {
  const MechPage({Key? key}) : super(key: key);

  @override
  _MechPageState createState() => _MechPageState();
}

class _MechPageState extends State<MechPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: underConstruction(context),
    );
  }
}
