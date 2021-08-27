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

// void launchReport() async => await canLaunch(_reportURL)
//     ? await launch(_reportURL)
//     : throw 'Could not launch $_reportURL';
// void launchGitHub() async => await canLaunch(_githubURL)
//     ? await launch(_githubURL)
//     : throw 'Could not launch $_githubURL';
// // void launchMedium() async => await canLaunch(_mediumURL)
// //     ? await launch(_mediumURL)
// //     : throw 'Could not launch $_mediumURL';
// void launchLinkedIn() async => await canLaunch(_linkedinURL)
//     ? await launch(_linkedinURL)
//     : throw 'Could not launch $_linkedinURL';
// void launchRepo() async => await canLaunch(_repoURL)
//     ? await launch(_repoURL)
//     : throw 'Could not launch $_repoURL';
// void launchBlog() async => await canLaunch(_blogURL)
//     ? await launch(_blogURL)
//     : throw 'Could not launch $_blogURL';
// void launchCoffee() async => await canLaunch(_coffeeURL)
//     ? await launch(_coffeeURL)
//     : throw 'Could not launch $_coffeeURL';
// void launchWorksome() async => await canLaunch(_worksomeURL)
//     ? await launch(_worksomeURL)
//     : throw 'Could not launch $_worksomeURL';
// void launchUpwork() async => await canLaunch(_upworkURL)
//     ? await launch(_upworkURL)
//     : throw 'Could not launch $_upworkURL';
// void launchPage0() async => await canLaunch(_t2URL)
//     ? await launch(_t2URL)
//     : throw 'Could not launch $_t2URL';
// void launchPage1() async => await canLaunch(_sentecURL)
//     ? await launch(_sentecURL)
//     : throw 'Could not launch $_sentecURL';
// void launchPage2() async => await canLaunch(_linkedinURL)
//     ? await launch(_linkedinURL)
//     : throw 'Could not launch $_linkedinURL';
