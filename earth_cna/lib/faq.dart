import 'package:flutter/material.dart';

/// 메인위젯입니다 - Appbar + ExpansionPanel
class Fnq extends StatelessWidget {
  const Fnq({Key? key}) : super(key: key);

  static const String _title = 'FAQ';

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

/// MyStatefulWidget은 stateful widget으로 하위위젯을 감쌉니다.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  final List<Item> _data = <Item>[
    Item(
        expandedValue:
            '어스는 딥러닝 기반의 AI 챗봇 플랫폼이에요.\n환경 관련으로 다양한 질문을 받으며, 다양한 정보를 드려요.\n궁금한 점이 있으면 어스에게 24시간 언제든지 질문하세요 :)\n',
        headerValue: 'Q. 어스란 무엇인가요?'),
    Item(
        expandedValue:
            '간단하게 플레이스토어에서 다운받아서 이용할 수 있어요. \n메인 화면에서 어스 앱을 클릭하여 궁금한 점을 물어보세요.\n',
        headerValue: 'Q. 어스 앱은 어떻게 이용하나요?'),
    Item(
        expandedValue: '00springbom00@gmail.com 으로 연락주세요 :)\n',
        headerValue: 'Q. 문의 사항이 있다면 어떻게 하나요?')
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
                  title: Text(item.headerValue,
                      style: TextStyle(fontWeight: FontWeight.bold)));
            },
            body: ListTile(
              title: Text(item.expandedValue),
              contentPadding: EdgeInsets.fromLTRB(15, 20, 50, 5),
              tileColor: Color.fromRGBO(242, 247, 247, 1),
            ),
            isExpanded: item.isExpanded,
            canTapOnHeader: true);
      }).toList(),
    );
  }
}
