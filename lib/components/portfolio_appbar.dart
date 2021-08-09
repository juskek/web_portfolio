import 'package:web_portfolio/index_main.dart';

PreferredSizeWidget? portfolioAppBar(BuildContext context) {
  return AppBar(
    // APPBAR Style
    centerTitle: true,
    shadowColor: Colors.transparent,
    backgroundColor: Styles.white,

    // APPBAR Border
    bottom: PreferredSize(
      child: Container(color: Styles.lightGray, height: 2),
      preferredSize: Size.fromHeight(2),
    ),

    // APPBAR LEADING ITEM: DRAWER
    // leading: _jkPopupMenu(),
    leading: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Builder(
          builder: (context) => IconButton(
            icon: Image.asset('assets/jk_sb.png'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        // TODO: fix text overflowing off leading item on the right
        Container(
          child: AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              FadeAnimatedText(
                '< MENU',
                textStyle: Styles.smallText,
              ),
              FadeAnimatedText(
                '< MENU',
                textStyle: Styles.smallText,
              ),
              FadeAnimatedText(
                '< MENU',
                textStyle: Styles.smallText,
              ),
              FadeAnimatedText(
                '< MENU',
                textStyle: Styles.smallText,
              ),
              FadeAnimatedText(
                '< MENU',
                textStyle: Styles.smallText,
              ),
            ],
          ),
        ),
      ],
    ),

    // APPBAR TRAILING ACTIONS: LINKEDIN & GITHUB
    actions: [
      IconButton(
        onPressed: launchLinkedIn,
        icon: Image.asset('assets/linkedin.png'),
        splashRadius: kToolbarHeight * 0.4,
      ),
      IconButton(
        onPressed: launchGitHub,
        icon: Image.asset('assets/github.png'),
        splashRadius: kToolbarHeight * 0.4,
      ),
    ],
  );
}
