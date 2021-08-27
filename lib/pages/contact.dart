import 'package:web_portfolio/index_main.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: portfolioAppBar(context),
        drawer: customDrawer(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              headerTextContainer('CONTACT'),
              SizedBox(height: Styles.smallPadding),
              Text(
                'FOR CONTRACT WORK, YOU CAN FIND ME ON WORKSOME OR UPWORK.',
                style: Styles.normalText,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Styles.smallPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () =>
                        launchURL(worksomeURL), // ! not fading, popping instead
                    child: Container(
                      padding: Styles.smallBorderPadding,
                      child: Text(
                        'WORKSOME',
                        style: Styles.normalText,
                      ),
                    ),
                  ),
                  Container(width: Styles.smallPadding),
                  OutlinedButton(
                    onPressed: () => launchURL(upworkURL),
                    child: Container(
                      padding: Styles.smallBorderPadding,
                      child: Text(
                        'UPWORK',
                        style: Styles.normalText,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Styles.smallPadding),
              Text(
                'FOR EVERYTHING ELSE,\nYOU GET IN TOUCH WITH ME ON LINKEDIN.',
                style: Styles.normalText,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Styles.smallPadding),
              OutlinedButton(
                onPressed: () => launchURL(linkedinURL),
                child: Container(
                  padding: Styles.smallBorderPadding,
                  child: Text(
                    'LINKEDIN',
                    style: Styles.normalText,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
