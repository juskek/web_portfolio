import 'package:web_portfolio/index_main.dart';

// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import 'chart.dart';
// import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  final AnimationController _controller;
  final RadarChartData _radarChartData;

  const StorageDetails(
    controller,
    radarChartData, {
    Key? key,
  })  : _controller = controller,
        _radarChartData = radarChartData,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Styles.smallPadding),
      decoration: Styles.mainBoxDecoration,
      // BoxDecoration(
      //   color: Styles.gray,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: Styles.normalText),
          SizedBox(height: Styles.smallPadding),
          // Chart(),
          Container(
              height: 200,
              child: Center(
                  child: RadarChartTransition(_controller, _radarChartData))),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Data Structures & Algorithms",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "UI & UX",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "App Development",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Games",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
