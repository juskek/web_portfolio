import 'package:web_portfolio/index_main.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/models/MyFiles.dart';
// import '../../../constants.dart';
// import 'file_info_card.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

class FeaturedProjects extends StatelessWidget {
  final _featCards;
  const FeaturedProjects(
    featCards, {
    Key? key,
  })  : _featCards = featCards,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Software Projects', style: Styles.boldIntroCompact),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        // Text("Featured", style: Styles.boldProj),
        // ElevatedButton.icon(
        //   style: TextButton.styleFrom(
        //     padding: EdgeInsets.symmetric(
        //       horizontal: Styles.smallPadding * 1.5,
        //       vertical: Styles.smallPadding /
        //           (Responsive.isMobile(context) ? 2 : 1),
        //     ),
        //   ),
        //   onPressed: () {},
        //   icon: Icon(Icons.add),
        //   label: Text("Add New"),
        // ),
        //   ],
        // ),
        SizedBox(
          height: Styles.smallPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            _featCards,
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(_featCards),
          desktop: FileInfoCardGridView(
            _featCards,
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView(
    featCards, {
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  })  : _featCards = featCards,
        super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final _featCards;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none, // prevent shadows from getting clipped by parent
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _featCards.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: Styles.smallPadding,
        mainAxisSpacing: Styles.smallPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: _featCards[index]),
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Styles.smallPadding),
      decoration: Styles.mainBoxDecoration,
      // BoxDecoration(
      //   color: Styles.extraLightGray,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(Styles.smallPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  color: info.color,
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(
            color: info.color,
            percentage: info.percentage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),
              ),
              Text(
                info.totalStorage!,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = Styles.gray,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
