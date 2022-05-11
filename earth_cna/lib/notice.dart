import 'package:flutter/material.dart';

/// 메인위젯입니다 - Appbar + ExpansionPanel
class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  static const String _title = '공지사항';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(52, 73, 94, 1),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  final List<Item> _data = <Item>[
    Item(
        expandedValue: '앱 출시 기념 이벤트를 진행합니다. 자세한 사항은 다음 링크를 참고해주세요\n(링크)',
        headerValue: 'EARTH와 함께하는 US 이벤트 안내'),
    Item(
        expandedValue: '챗봇 화면 실행시 뒤로가기 오류 문제를 해결하였습니다.',
        headerValue: 'v1.3업데이트 안내')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  /// ExpansionPanelList
  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(

            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
              contentPadding: EdgeInsets.fromLTRB(15, 10, 50, 10),
              tileColor: Color.fromRGBO(242, 247, 247, 1),
            ),
            isExpanded: item.isExpanded,
            canTapOnHeader: true);
      }).toList(),
    );
  }
}
