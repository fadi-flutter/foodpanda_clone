import 'package:flutter/material.dart';
import 'package:foodpanda/constants/color_const.dart';
import 'package:foodpanda/constants/pics_const.dart';
import 'package:velocity_x/velocity_x.dart';
import '../components/popular_card.dart';

class PopularDishScreen extends StatefulWidget {
  const PopularDishScreen({super.key});

  @override
  State<PopularDishScreen> createState() => _PopularDishScreenState();
}

class _PopularDishScreenState extends State<PopularDishScreen> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(PicsConst.dataList[1].image),
              ),
              Padding(
                padding: EdgeInsets.only(top: sizeh * 0.010),
                child: 'Faisalabad Noodles'
                    .text
                    .color(pink)
                    .maxLines(1)
                    .ellipsis
                    .size(sizew * 0.055)
                    .bold
                    .make(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: sizew * 0.020, vertical: sizeh * 0.010),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: sizew * 0.020,
                      children: [
                        MaterialButton(
                          color: pink,
                          textColor: white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: pink),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {},
                          child: 'Popular'.text.bold.make(),
                        ),
                        MaterialButton(
                          textColor: grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: grey),
                          ),
                          onPressed: () {},
                          child: 'Favourate'.text.bold.make(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: sizew * 0.020),
                child:
                    'Popular'.text.color(pink).size(sizew * 0.045).bold.make(),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: sizeh * 0.010),
                itemCount: PicsConst.dataList.length,
                itemBuilder: ((context, index) {
                  return PopularCard(index: index);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
