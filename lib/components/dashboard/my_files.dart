import 'package:web_portfolio/index_main.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/models/MyFiles.dart';
// import '../../../constants.dart';
// import 'file_info_card.dart';

class FeaturedFiles extends StatelessWidget {
  const FeaturedFiles({
    Key? key,
  }) : super(key: key);

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
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none, // prevent shadows from getting clipped by parent
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: Styles.smallPadding,
        mainAxisSpacing: Styles.smallPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
