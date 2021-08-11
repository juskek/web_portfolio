import 'package:web_portfolio/index_main.dart';

// URLs
const _linkedinURL = 'https://www.linkedin.com/in/justinkek/';
const _reportURL = 'https://github.com/juskek/web_portfolio/issues';
const _githubURL = 'https://github.com/juskek';
const _repoURL = 'https://github.com/juskek/web_portfolio';
const _blogURL = 'https://justinkek.medium.com/';
const _coffeeURL = 'https://www.buymeacoffee.com/justinkek';
const _worksomeURL = 'https://use.worksome.co.uk/profile/109179';
const _upworkURL = 'https://www.upwork.com/freelancers/~01004b88e742d2b867';
const _t2URL = 'https://t2diary-e583f.web.app/#/home';
const _sentecURL =
    'https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:6738060771831386112';
const _cvURL =
    'https://github.com/juskek/web_portfolio/raw/master/assets/Resume%20-%20Justin%20Kek_15Jul21.pdf'; // TODO:H update CV amd upload to github wo contact details

// TODO: WRITE A FUNCTION FOR THIS..... lol
void launchReport() async => await canLaunch(_reportURL)
    ? await launch(_reportURL)
    : throw 'Could not launch $_reportURL';
void launchGitHub() async => await canLaunch(_githubURL)
    ? await launch(_githubURL)
    : throw 'Could not launch $_githubURL';
void launchLinkedIn() async => await canLaunch(_linkedinURL)
    ? await launch(_linkedinURL)
    : throw 'Could not launch $_linkedinURL';
void launchRepo() async => await canLaunch(_repoURL)
    ? await launch(_repoURL)
    : throw 'Could not launch $_repoURL';
void launchBlog() async => await canLaunch(_blogURL)
    ? await launch(_blogURL)
    : throw 'Could not launch $_blogURL';
void launchCoffee() async => await canLaunch(_coffeeURL)
    ? await launch(_coffeeURL)
    : throw 'Could not launch $_coffeeURL';
void launchWorksome() async => await canLaunch(_worksomeURL)
    ? await launch(_worksomeURL)
    : throw 'Could not launch $_worksomeURL';
void launchUpwork() async => await canLaunch(_upworkURL)
    ? await launch(_upworkURL)
    : throw 'Could not launch $_upworkURL';
void launchPage0() async => await canLaunch(_t2URL)
    ? await launch(_t2URL)
    : throw 'Could not launch $_t2URL';
void launchPage1() async => await canLaunch(_sentecURL)
    ? await launch(_sentecURL)
    : throw 'Could not launch $_sentecURL';
void launchPage2() async => await canLaunch(_cvURL)
    ? await launch(_cvURL)
    : throw 'Could not launch $_cvURL';
