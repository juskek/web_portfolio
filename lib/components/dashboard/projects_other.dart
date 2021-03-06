import 'package:web_portfolio/index_main.dart';

// import 'package:admin/models/RecentFile.dart';
// import 'package:data_table_2/data_table_2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../constants.dart';
class DashboardOtherData {
  // final String? icon, title, date, size;
  final String? icon, title, description;

  // DashboardOtherData({this.icon, this.title, this.date, this.size});
  DashboardOtherData({this.icon, this.title, this.description});
}

class OtherProjects extends StatelessWidget {
  final _otherCards;
  const OtherProjects(
    otherCards, {
    Key? key,
  })  : _otherCards = otherCards,
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
          // Text(
          //   "Everything Else",
          //   style: Theme.of(context).textTheme.subtitle1,
          // ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: Styles.smallPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Description"),
                ),
                // DataColumn(
                //   label: Text("REMOVE"),
                // ),
              ],
              rows: List.generate(
                _otherCards.length,
                (index) => recentFileDataRow(_otherCards[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(DashboardOtherData fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Styles.smallPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.description!)),
      // DataCell(Text(fileInfo.date!)),
      // DataCell(Text(fileInfo.size!)),
    ],
  );
}
