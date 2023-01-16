import 'package:flutter/material.dart';
import 'package:foodpanda/constants/pics_const.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/color_const.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final sizew = MediaQuery.of(context).size.width * 1;
    final sizeh = MediaQuery.of(context).size.height * 1 > 800
        ? MediaQuery.of(context).size.height * 1.05
        : MediaQuery.of(context).size.height * 1;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sizew * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: sizeh * 0.18,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    //this is image
                    PicsConst.dataList[index].image,
                  ),
                ),
              ),
              Container(
                height: sizeh * 0.17,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.values[4],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: sizeh * 0.007, horizontal: sizew * 0.020),
                      decoration: const BoxDecoration(
                        color: pink,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      //this is discount
                      child: PicsConst.dataList[index].discount.text
                          .size(sizew * 0.010)
                          .white
                          .make(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: sizew * 0.015),
                      padding: EdgeInsets.symmetric(
                          vertical: sizeh * 0.004, horizontal: sizew * 0.016),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      //this is time
                      child: PicsConst.dataList[index].time.text
                          .size(sizew * 0.005)
                          .black
                          .make(),
                    ),
                  ],
                ),
              )
            ],
          ),
          Wrap(
            spacing: sizeh * 0.0050,
            direction: Axis.vertical,
            children: [
              PicsConst.dataList[index].shop.text.bold.size(sizew * 0.018).make(),
              '${PicsConst.dataList[index].price} Rs. Pakistani'.text.size(sizew * 0.010).make(),
              Wrap(
                children: [
                  const Icon(
                    Icons.pedal_bike_outlined,
                    color: pink,
                  ),
                  SizedBox(
                    width: sizew * 0.020,
                  ),
                  const Icon(
                    Icons.star,
                    color: yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: sizeh * 0.003),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          //this is reviews & ratings
                          PicsConst.dataList[index].reviews.textSpan.bold
                              .make(),
                          PicsConst.dataList[index].rating.textSpan.bold
                              .color(grey)
                              .make()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
