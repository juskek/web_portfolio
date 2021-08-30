import 'package:web_portfolio/index_main.dart';

// URLs
const linkedinURL = 'https://www.linkedin.com/in/justinkek/';
const mediumURL = 'https://justinkek.medium.com/';
const reportURL = 'https://github.com/juskek/web_portfolio/issues';
const githubURL = 'https://github.com/juskek';
const repoURL = 'https://github.com/juskek/web_portfolio';
const blogURL = 'https://justinkek.medium.com/';
const coffeeURL = 'https://www.buymeacoffee.com/justinkek';
const worksomeURL = 'https://use.worksome.co.uk/profile/109179';
const upworkURL = 'https://www.upwork.com/freelancers/~01004b88e742d2b867';
const t2URL = 'https://t2diary-e583f.web.app/#/home';
const sentecURL =
    'https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:6738060771831386112';

void launchURL(_url) async {
  await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
