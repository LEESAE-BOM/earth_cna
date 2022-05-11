import 'package:earth_cna/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:earth_cna/screen/gridview_page.dart';
import 'package:earth_cna/screen/listview_page.dart';

class Tips extends StatelessWidget  {
  //가정편
  List<Category> _categoriesList = <Category>[
    Category(name: '전기밥솥 보온기능 사용 줄이기', image: 'assets/images/home1.png'),
    Category(name: '비데 절전기능 사용하기', image: 'assets/images/home2.png'),
    Category(name: '디지털 탄소발자국 줄이기', image: 'assets/images/home3.png'),
    Category(name: '바람막이 제품으로 실내 열 손실 차단하기', image: 'assets/images/home4.png'),
    Category(name: '절수 설비 또는 절수기기 설치하기', image: 'assets/images/home5.png'),
    Category(name: '고효율 가전제품 사용하기', image: 'assets/images/home6.png'),
    Category(name: '주기적으로 보일러 청소하기', image: 'assets/images/home7.png'),
    Category(name: 'LED 조명으로 교체하기', image: 'assets/images/home8.png'),
    Category(name: '저탄소 제품 구매하기', image: 'assets/images/home9.png'),
    Category(name: '저탄소 인증 농축산물 이용하기', image: 'assets/images/home10.png'),
    Category(name: '개인용 자동차 대신 대중교통 이용하기', image: 'assets/images/home11.png'),
    Category(name: '가까운 거리는 걷거나 자전거 타기', image: 'assets/images/home12.png'),
    Category(name: '전기·수소 자동차 구매하기', image: 'assets/images/home13.png'),
    Category(name: '장바구니 사용하고 비닐 사용 줄이기', image: 'assets/images/home14.png'),
    Category(name: '1회용 대신 다회용 사용하기', image: 'assets/images/home15.png'),
    Category(name: '종이 청구서,영수증 대신 전자서비스 이용하기', image: 'assets/images/home16.png'),
    Category(name: '기념일에 나무를 심어보기', image: 'assets/images/home17.png'),
    Category(name: '타월,핸드 드라이어 대신 개인 손수건 사용하기', image: 'assets/images/home18.png'),
  ];

  //직장편
  List<Category> _categoriesList2 = <Category>[
    Category(name: '난방온도 2˚c ↑, 냉방온도 2˚c ↓', image: 'assets/images/off1.png'),
    Category(name: '승강기 격층 운행하기', image: 'assets/images/off2.png'),
    Category(name: '기업 내 녹색제품 구매제도 운영하기', image: 'assets/images/off3.png'),
    Category(name: '저탄소 식단 운영하기', image: 'assets/images/off4.png'),
    Category(name: '재활용을 위한 분리배출 실천', image: 'assets/images/off5.png'),
    Category(name: '인쇄 시 종이 사용 줄이기', image: 'assets/images/off6.png'),
    Category(name: '종이 없는 회의 활성화하기', image: 'assets/images/off7.png'),
    Category(name: '사무실 내외 식물 가꾸기', image: 'assets/images/off8.png'),
    Category(name: '엘리베이터 대신 계단 이용하기', image: 'assets/images/off9.png'),
    Category(name: '임직원 대상 탄소 흡수원 인식 교육하기', image: 'assets/images/off10.png'),
    Category(name: '나무심기 캠페인 실시하기', image: 'assets/images/off11.png'),
    Category(name: '산불예방 교육하기', image: 'assets/images/off12.png'),
    Category(name: '공용차량 수소 및 전기차로 교체하기', image: 'assets/images/off13.png'),
    Category(name: '사무실 전자기기 대기전력 차단하기', image: 'assets/images/off14.png'),
  ];

  List<Category> get categoriesList => _categoriesList;
  List<Category> get categoriesList2 => _categoriesList2;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('탄소중립 생활실천 Tip 💡'),
            backgroundColor: Color(0xFF808080),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/home_btn.png'),
                  iconSize: 290,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeViewPage()));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  // child: Text(
                  //   '✔ 가정 Tip',
                  //   style: TextStyle(color: Colors.white, fontSize: 16),
                  //   textAlign: TextAlign.center,
                  // ),
                ),
                SizedBox(
                  width: 500,
                  height: 20,
                ),
                Divider(
                    thickness: 1, height: 1, color:Color(0xFF808080)
                ),
                IconButton(
                  icon: Image.asset('assets/images/off_btn.png'),
                  iconSize: 290,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfficeViewPage()));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  // child: Text(
                  //   '✔ 직장 Tip',
                  //   style: TextStyle(color: Colors.white, fontSize: 16),
                  //   textAlign: TextAlign.center,
                  // ),
                ),
                // MaterialButton(
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => OfficeViewPage()));
                //   },
                //   color: Colors.blueGrey,
                //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                //   child: Text(
                //     '✔ 직장 Tip',
                //     style: TextStyle(color: Colors.white, fontSize: 16),
                //     textAlign: TextAlign.center,
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}