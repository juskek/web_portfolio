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

Widget customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: SizedBox(
            height: kToolbarHeight * 0.4,
            child: Image.asset(
              'assets/jk_sb.png',
            ),
          ),
          title: Text('HOME'),
        ),
        ListTile(
          leading: Icon(Icons.code),
          title: Text(
            'SOFTWARE PROJECTS - COMING SOON',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/softPage'),
        ),
        ListTile(
          leading: Icon(Icons.carpenter_outlined),
          title: Text(
            'MECHANICAL PROJECTS - COMING SOON',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/mechPage'),
        ),
        ListTile(
          leading: Icon(Icons.bubble_chart_outlined),
          title: Text(
            'OTHER PROJECTS - COMING SOON',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/otherPage'),
        ),
        ListTile(
          leading: Icon(Icons.dashboard_outlined),
          title: Text(
            'BLOG',
            style: Styles.smallText,
          ),
          onTap: launchBlog,
        ),
        ListTile(
          leading: Icon(Icons.insert_link),
          title: Text(
            'SITE REPOSITORY',
            style: Styles.smallText,
          ),
          onTap: launchRepo,
        ),
        ListTile(
          leading: Icon(Icons.coffee_outlined),
          title: Text(
            'BUY ME A COFFEE',
            style: Styles.smallText,
          ),
          onTap: launchCoffee,
        ),
      ],
    ),
  );
}
