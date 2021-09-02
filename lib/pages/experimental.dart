import 'package:web_portfolio/index_main.dart';
import 'package:web_portfolio/pages/software/software_data.dart';
import 'package:dart_pad_widget/dart_pad_widget.dart';

class ExperimentalPage extends StatefulWidget {
  const ExperimentalPage({Key? key}) : super(key: key);

  @override
  _ExperimentalPageState createState() => _ExperimentalPageState();
}

class _ExperimentalPageState extends State<ExperimentalPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: portfolioAppBar(context),
      drawer: customDrawer(context),
      // body: underConstruction(context),
      body: Center(
        child: DartPad(
          key: Key('example1'),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          code: '''void main() {
            print("Welcome to my web portfolio!");
            print("I'm testing out DartPad to collate a series of data structures and algorithms.");
          } ''',
          darkMode: false,
        ),
      ),
    );
  }
}
