import 'package:web_portfolio/index_main.dart';

PreferredSizeWidget? portfolioAppBar(BuildContext context) {
  return AppBar(
    // TODO: make drop shadow consistent
    leadingWidth: 100, // increase leading width to fit menu animation
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
        AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            FadeAnimatedText(
              '| MENU',
              textStyle: Styles.smallText,
            ),
            FadeAnimatedText(
              '| MENU',
              textStyle: Styles.smallText,
            ),
            FadeAnimatedText(
              '| MENU',
              textStyle: Styles.smallText,
            ),
          ],
        ),
      ],
    ),

    // APPBAR TRAILING ACTIONS: LINKEDIN & GITHUB
    actions: [
      IconButton(
        onPressed: () => launchURL(mediumURL),
        // TODO: render svg asset
        icon: SvgPicture.asset('assets/medium.svg'),
        // icon: Image.asset('assets/linkedin.png'),
        splashRadius: kToolbarHeight * 0.4,
      ),
      IconButton(
        onPressed: () => launchURL(linkedinURL),
        icon: Image.asset('assets/linkedin.png'),
        splashRadius: kToolbarHeight * 0.4,
      ),
      IconButton(
        onPressed: () => launchURL(githubURL),
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
          onTap: () => Navigator.pushNamed(context, '/'),
        ),
        ListTile(
          leading: Icon(Icons.code),
          title: Text(
            'SOFTWARE PROJECTS',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/software-projects'),
        ),
        ListTile(
          leading: Icon(Icons.carpenter_outlined),
          title: Text(
            'MECHANICAL PROJECTS',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/mechanical-projects'),
        ),
        ListTile(
          leading: Icon(Icons.bubble_chart_outlined),
          title: Text(
            'OTHER PROJECTS',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/other-projects'),
        ),
        ListTile(
          leading: Icon(Icons.dashboard_outlined),
          title: Text(
            'BLOG',
            style: Styles.smallText,
          ),
          onTap: () => launchURL(blogURL),
        ),
        ListTile(
          leading: Icon(Icons.insert_link),
          title: Text(
            'SITE REPOSITORY',
            style: Styles.smallText,
          ),
          onTap: () => launchURL(repoURL),
        ),
        ListTile(
          leading: Icon(Icons.contact_page_outlined),
          title: Text(
            'CONTACT',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/consulting'),
        ),
        ListTile(
          leading: Icon(Icons.coffee_outlined),
          title: Text(
            'SEND COFFEE',
            style: Styles.smallText,
          ),
          onTap: () => launchURL(coffeeURL),
        ),
        ListTile(
          leading: Icon(Icons.science_outlined),
          title: Text(
            'EXPERIMENTAL',
            style: Styles.smallText,
          ),
          onTap: () => Navigator.pushNamed(context, '/experimental'),
        ),
      ],
    ),
  );
}
