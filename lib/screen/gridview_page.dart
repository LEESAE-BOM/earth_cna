import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:earth_cna/tip.dart';
import 'package:earth_cna/models/category.dart';

class OfficeViewPage extends StatelessWidget {
  const OfficeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> _list = Tips().categoriesList2;

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('🌳 직장에서 실천하기'),
            backgroundColor: Color(0xFF808080),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: AnimationLimiter(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredGrid(
                          columnCount: 2,
                          position: index,
                          duration: Duration(milliseconds: 1000),
                          child: ScaleAnimation(
                              child: FadeInAnimation(
                                  delay: Duration(milliseconds: 100),
                                  child: listItem(_list[index]))));
                    })),
          ),
        ));
  }

  Widget listItem(Category category) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(8),
              child: Image.asset(category.image),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              category.name,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}