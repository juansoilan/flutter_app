import 'package:flutter/material.dart';
import 'package:flutter_app/global/config.dart';
import 'package:flutter_app/movie/ui/item_classify_tag.dart';

class ClassifySectionView extends StatelessWidget {
  String title;

  ClassifySectionView(this.title);

  @override
  Widget build(BuildContext context) {
    List<String> classifyList;

    switch (title) {
      case '类型':
        classifyList = Config.GenreList;
        break;
      case '地区':
        classifyList = Config.RegionList;
        break;
      case '年代':
        classifyList = Config.YearList;
        break;
      case '特色':
        classifyList = Config.FeatureList;
        break;
      default:
    }

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: GridView.builder(
              itemCount: classifyList.length,
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.8,
              ),
              itemBuilder: (context, index) => ItemClassifyTag(
                    tag: classifyList[index],
                  ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}