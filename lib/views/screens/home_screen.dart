import 'package:flutter/material.dart';
import 'package:foodpanda/constants/color_const.dart';
import 'package:foodpanda/constants/pics_const.dart';
import 'package:velocity_x/velocity_x.dart';
import '../components/order_card.dart';
import '../components/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    PicsConst.getData();
  }

  @override
  Widget build(BuildContext context) {
    final sizew = MediaQuery.of(context).size.width * 1;

    final sizeh = MediaQuery.of(context).size.height * 1 > 800
        ? MediaQuery.of(context).size.height * 1.05
        : MediaQuery.of(context).size.height * 1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: sizew * 0.045, vertical: sizeh * 0.0067),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: sizew * 0.05,
                    children: [
                      Icon(
                        Icons.list,
                        color: pink,
                        size: sizew * 0.075,
                      ),
                      'New Your City'.text.bold.size(sizew * 0.050).make(),
                    ],
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: pink,
                    size: sizew * 0.075,
                  )
                ],
              ),
            ),
            textFieldWidget(context),
            SizedBox(
              height: sizeh * 0.018,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sizew * 0.033),
              child: Stack(
                children: [
                  SizedBox(
                    height: sizeh * 0.22,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/chicken.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: sizeh * 0.22,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: lightBlack,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: sizew * 0.040,
                        bottom: sizeh * 0.018,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          'Food Delivery'
                              .text
                              .bold
                              .maxLines(1)
                              .size(sizew * 0.055)
                              .white
                              .make(),
                          'Urder from your favorite'
                              .text
                              .size(sizew * 0.037)
                              .white
                              .make(),
                          'restaurants and home chefs'
                              .text
                              .size(sizew * 0.037)
                              .white
                              .make(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: sizew * 0.03, vertical: sizeh * 0.015),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: sizeh * 0.25,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: sizew * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: yellow,
                      ),
                      padding: EdgeInsets.only(bottom: sizeh * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: sizew * 0.1,
                            backgroundImage:
                                const AssetImage('assets/images/chicken.jpg'),
                          ),
                          SizedBox(
                            height: sizeh * 0.040,
                          ),
                          Wrap(
                            direction: Axis.vertical,
                            alignment: WrapAlignment.start,
                            children: [
                              'pandamart'.text.bold.size(sizew * 0.050).make(),
                              'panda20 for 20% off'.text.make(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/burger.jpg',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: sizeh * 0.010, left: sizew * 0.020),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: lightBlack,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    'Pick-Uo'.text.white.bold.make(),
                                    '50% off'.text.white.make()
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: sizeh * 0.007,
                            ),
                            padding: EdgeInsets.only(
                                bottom: sizeh * 0.010, left: sizew * 0.020),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                'Shops'
                                    .text
                                    .bold
                                    .size(sizew * 0.045)
                                    .white
                                    .make(),
                                'EveryDay essentials'
                                    .text
                                    .size(sizew * 0.040)
                                    .white
                                    .make()
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: sizew * 0.028, vertical: sizeh * 0.007),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  'Your daily deals'.text.bold.make(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: PicsConst.dataList.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return OrderCard(
                    index: index,
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
