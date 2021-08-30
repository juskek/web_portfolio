import 'package:web_portfolio/components/styles/custom_appbar.dart';
import 'package:web_portfolio/index_main.dart';
import 'package:universal_html/html.dart' as html; // for downloading pdf
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io' as io;

// ========================= GLOBAL VARIABLES =========================
// EDITABLE TEXT
List<String> roleText = [
  "a software engineer by passion.",
  "a mechanical engineer by education.",
  "an Imperial graduate with an MEng."
];
int typingSpeed = 40;
int backspaceSpeed = 10;

List projTitles = [
  "T2Diary",
  "Self-sterilising Push Button",
  "Curriculum Vitae",
];

List projImages = [
  "assets/p_t2diary.png", //TODO: fix black line on left border
  "assets/p_sentec.png",
  "assets/p_imperial.png",
];

/// Accomplished X
/// as measured by Y
/// by doing Z
List projDescrs = [
  "I led a team of six to design mobile application for Type 2 Diabetics over the course of a year. Design and development was recursively achieved with the help of Type 2 Diabetics and healthcare providers. Click here for a web app prototype (best viewed on mobile).",
  "I developed a self-sterilising push button prototype in the span of eight weeks at Sentec (Xylem) in response to COVID-19, leading to an initial patent filing upon review by management. Click here for a video demonstration.",
  "I spent four years at Imperial College London engaged in a wide variety of mechanical, electrical and software projects. Click here for my LinkedIn.",
];

// TEXT ANIMATION
bool helloAnimated = false;
bool roleAnimated = false;

// FEATURE PAGE ANIMATION
int currentPage = 0;
int previousPage = 0;

// UI
double screenWidth = 0;
String uiState = '';

// SPLASH
double smallSplash = kToolbarHeight * 0.4;
double bigSplash = kToolbarHeight * 0.6;

void downloadFile(String url) {
  html.AnchorElement anchorElement = new html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _helloFinished() {
    setState(() {
      helloAnimated = true;
    });
  }

  void _roleReanimate() {
    setState(() {
      roleAnimated = false;
    });
  }

  void _changePage() {
    setState(() {
      previousPage = currentPage;
      roleAnimated = true; // clear roleText on _changePage
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
    });
  }

  void _pageRight() {
    setState(() {
      previousPage = currentPage;
      roleAnimated = true; // clear roleText on _changePage
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
    });
    _pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );
    Timer(Duration(seconds: 1), _roleReanimate);
    _pageTimer.cancel();
    _startPageTimer();
  }

  void _pageLeft() {
    setState(() {
      previousPage = currentPage;
      roleAnimated = true; // clear roleText on _changePage
      if (currentPage > 0) {
        currentPage--;
      } else {
        currentPage = 2;
      }
    });
    _pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );

    Timer(Duration(seconds: 1), _roleReanimate);
    _pageTimer.cancel();
    _startPageTimer();
  }

  // ================ INIT PORTFOLIO PAGE CONTROLLER ================

  final PageController _pageController = PageController(
    viewportFraction: 1,
    initialPage: 0,
  );

  // ========== INIT DOT INDICATOR PARAMETERs ==========
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  // final _kArrowColor = Colors.black.withOpacity(0.8);
  // static onTap(index) {
  //   print("$index selected.");
  // }

  final List<Widget> _pages = <Widget>[
    _projContainer(0),
    _projContainer(1),
    _projContainer(2),
  ];
  // final List<Widget> _pages = <Widget>[
  //   new FlutterLogo(textColor: Colors.blue),
  //   new FlutterLogo(style: FlutterLogoStyle.stacked, textColor: Colors.red),
  //   new FlutterLogo(
  //       style: FlutterLogoStyle.horizontal, textColor: Colors.green),
  // ];

  Widget _buildPageItem(BuildContext context, int index) {
    return new FeaturePage(page: _pages[index], idx: index);
  }

  Widget updateRoleText() {
    if ((helloAnimated == true) & (roleAnimated == false)) {
      // ============= TYPEWRITER EXISTING TEXT =============
      return Container(
        color: Styles.backgroundGray,
        child: SizedBox(
          width: (screenWidth - Styles.largePadding * 2), // wrap text
          child: AnimatedTextKit(
            totalRepeatCount: 1,
            animatedTexts: [
              TypewriterAnimatedText(roleText[currentPage],
                  textStyle: Styles
                      .underIntroCompact, // TODO:L conditional font size COMPACT/REGULAR
                  cursor: '|',
                  speed: Duration(milliseconds: typingSpeed)),
            ],
          ),
        ),
      );
    } else if ((helloAnimated == true) & (roleAnimated == true)) {
      // ============= BACKSPACE EXISTING TEXT =============
      // TODO:L Fix blink between typing and backspacing text
      return Container(
        child: AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            BackspaceTypewriterAnimatedText(
              roleText[previousPage],
              textStyle: Styles
                  .underIntroCompact, // TODO:L conditional font size COMPACT/REGULAR
              cursor: '|',
              speed: Duration(milliseconds: backspaceSpeed),
            ),
          ],
        ),
      );
    } else {
      return Text(' ', style: Styles.underIntroCompact);
    }
  }

  late Timer _pageTimer;

  void _startPageTimer() {
    // AUTO PAGE CHANGE TIMER
    _pageTimer = new Timer.periodic(Duration(seconds: 9), (Timer timer) {
      _changePage();
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
      Timer(Duration(seconds: 1), _roleReanimate);
    });
  }

  @override
  void initState() {
    super.initState();
    _startPageTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // CHECK SCREEN WIDTH
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      uiState = 'COMPACT';
    } else {
      uiState = 'REGULAR';
    }

    return Scaffold(
      backgroundColor: Styles.backgroundGray,
      // ========================= APPBAR =========================
      drawer: customDrawer(context),
      appBar: portfolioAppBar(context),

      // ========================= MAIN BODY =========================
      // MAIN BODY
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ----------------- TOP ROW -----------------
            // TOP ROW: PADDING FROM TOP
            SizedBox(height: Styles.smallPadding),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TOP ROW: PADDING FROM LEFT
                  SizedBox(width: Styles.largePadding),

                  // TOP ROW: INTRO TEXT
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ANIMATE HELLO TEXT
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        onFinished: _helloFinished,
                        // totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText("Hello, I'm Justin,",
                              textStyle: Styles
                                  .boldIntroCompact, // TODO:L conditional font size COMPACT/REGULAR
                              cursor: '|',
                              speed: Duration(milliseconds: typingSpeed)),
                        ],
                      ),

                      // ANIMATE ROLE TEXT
                      updateRoleText(),
                    ],
                  ),
                ],
              ),
            ),
            // ----------------- MIDDLE ROW -----------------
            Flexible(
              flex: 7,
              // MIDDLE ROW: STACK
              child: Stack(
                children: <Widget>[
                  // MIDDLE ROW: LIST
                  new PageView.builder(
                    // TODO:L call pagechange functions with scroll
                    // reenable always scrollable after enabling scroll pagechange functions
                    // physics: new AlwaysScrollableScrollPhysics(),
                    physics: new NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    itemCount: _pages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildPageItem(context, index % _pages.length);
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // MIDDLE ROW: LEFT ARROW
                IconButton(
                  onPressed: _pageLeft,
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Styles.gray,
                  iconSize: 40,
                  splashRadius: 20,
                ),
                // MIDDLE ROW: DOTS INDICATOR
                new Container(
                  // color: Colors.grey[800].withOpacity(0.5),
                  color: Styles.transparent,
                  padding: const EdgeInsets.all(20.0),
                  child: new Center(
                    child: new DotsIndicator(
                      controller: _pageController,
                      itemCount: _pages.length,
                      onPageSelected: (int page) {
                        _pageController.animateToPage(
                          page,
                          duration: _kDuration,
                          curve: _kCurve,
                        );
                      },
                    ),
                  ),
                ),
                // MIDDLE ROW: RIGHT ARROW
                IconButton(
                  onPressed: _pageRight,
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Styles.gray,
                  iconSize: 40,
                  splashRadius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// PROJECT CONTAINER
Widget _projContainer(int index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // PADDING
      SizedBox(width: Styles.smallPadding),
      // IMAGE
      Flexible(
        flex: 1,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: Styles.transparent,
            child: Center(child: Image.asset(projImages[index])),
          ),
        ),
      ),
      // PADDING
      SizedBox(width: Styles.smallPadding),
      // TEXT
      Flexible(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              projTitles[index],
              style: Styles.boldProj,
              textAlign: TextAlign.justify,
            ),
            // PADDING
            SizedBox(height: Styles.smallPadding),
            Text(
              projDescrs[index],
              style: Styles.normalProj,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      // PADDING
      SizedBox(width: Styles.smallPadding),
    ],
  );
}

// ================= DOTS INDICATOR CLASS =================
/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color: Styles.gray,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      height: _kDotSize * _kMaxZoom,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

// ================= PAGE CLASS =================
class FeaturePage extends StatelessWidget {
  final page;
  final idx;

  FeaturePage({
    @required this.page,
    @required this.idx,
  });

  onTap() {
    print("${this.idx} selected.");
    if (idx == 0) {
      launchURL(t2URL);
    } else if (idx == 1) {
      launchURL(sentecURL);
    } else if (idx == 2) {
      launchURL(linkedinURL);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: new Container(
              child: new Card(
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    this.page,
                    // TODO: standardise the look of cards
                    new Material(
                      type: MaterialType.transparency,
                      child: new InkWell(onTap: this.onTap),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
