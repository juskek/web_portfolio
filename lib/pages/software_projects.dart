import 'package:web_portfolio/components/portfolio_appbar.dart';
import 'package:web_portfolio/index_main.dart';

class SoftPage extends StatefulWidget {
  const SoftPage({Key? key}) : super(key: key);

  @override
  _SoftPageState createState() => _SoftPageState();
}

class _SoftPageState extends State<SoftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: Text(
        'SOFTWARE PROJECTS COMING SOON',
        style: Styles.boldIntro,
      ),
    );
  }
}
