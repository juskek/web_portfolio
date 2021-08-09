import 'package:web_portfolio/index_main.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: underConstruction(context),
    );
  }
}
