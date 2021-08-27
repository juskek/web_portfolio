import 'package:web_portfolio/index_main.dart';

// import 'package:admin/constants.dart';
// import 'package:flutter/material.dart';

// class RecentFile {
//   // final String? icon, title, date, size;
//   final String? icon, title, description;

//   // RecentFile({this.icon, this.title, this.date, this.size});
//   RecentFile({this.icon, this.title, this.description});
// }

// class CloudStorageInfo {
//   final String? svgSrc, title, totalStorage;
//   final int? numOfFiles, percentage;
//   final Color? color;

//   CloudStorageInfo({
//     this.svgSrc,
//     this.title,
//     this.totalStorage,
//     this.numOfFiles,
//     this.percentage,
//     this.color,
//   });
// }

List softFeat = [
  CloudStorageInfo(
    title: "Soft1",
    numOfFiles: 1328,
    // svgSrc: "assets/jk_sb.svg",
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "1.9GB",
    color: Styles.black,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Slot Racing",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "T2Diary: Flutter",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "ESO: Data Analytics",
    numOfFiles: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];

List softOther = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "Proj 1",
    description: "01-03-2021",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "T2Diary: Figma",
    description: "27-02-2021",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Medium Blog",
    description: "23-02-2021",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Learning Repository",
    description: "21-02-2021",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "EOD Robot",
    description: "23-02-2021",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Quick Sort",
    description: "25-02-2021",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Merge Sort",
    description: "25-02-2021",
  ),
];
