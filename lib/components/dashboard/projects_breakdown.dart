import 'package:web_portfolio/index_main.dart';

// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import 'chart.dart';
// import 'storage_info_card.dart';

class BreakdownProjects extends StatelessWidget {
  final AnimationController _controller;
  final RadarChartData _radarChartData;

  const BreakdownProjects(
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

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Styles.smallPadding),
      padding: EdgeInsets.all(Styles.smallPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Styles.black.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(Styles.smallPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Styles.smallPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.smallText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("$numOfFiles Files", style: Styles.smallText
                      // Theme.of(context)
                      //     .textTheme
                      //     .caption!
                      //     .copyWith(color: Colors.white70),
                      ),
                ],
              ),
            ),
          ),
          // Text(amountOfFiles)
        ],
      ),
    );
  }
}
