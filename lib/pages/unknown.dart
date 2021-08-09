import 'package:web_portfolio/index_main.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  _UnknownPageState createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      body: Text(
        'PAGE NOT FOUND',
        style: Styles.boldIntro,
      ),
    );
  }
}
