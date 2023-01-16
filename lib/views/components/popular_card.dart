import 'package:flutter/material.dart';
import 'package:foodpanda/constants/pics_const.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/color_const.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
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
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: lightGrey, width: 2),
        ),
      ),
      height: sizeh * 0.13,
      padding: EdgeInsets.symmetric(
          horizontal: sizew * 0.012, vertical: sizeh * 0.010),
      margin: EdgeInsets.all(sizew * 0.010),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: sizeh * 0.005,
                direction: Axis.vertical,
                children: [
                  SizedBox(
                    width: sizew * 0.6,
                    child: PicsConst.dataList[index].item.text
                        .size(sizew * 0.045)
                        .maxLines(1)
                        .ellipsis
                        .bold
                        .make(),
                  ),
                  SizedBox(
                    width: sizew * 0.6,
                    child: 'Onion, capsicum, tomato & oliveOnion'
                        .text
                        .size(sizew * 0.035)
                        .maxLines(1)
                        .ellipsis
                        .color(grey)
                        .make(),
                  ),
                ],
              ),
              Wrap(
                spacing: sizew * 0.080,
                children: [
                  'Rs. ${PicsConst.dataList[index].price}'
                      .text
                      .size(sizew * 0.038)
                      .make(),
                  'Popular'.text.color(pink).size(sizew * 0.035).make()
                ],
              )
            ],
          ),
          Image.asset(
            PicsConst.dataList[index].image,
            height: sizeh * 0.08,
          )
        ],
      ),
    );
  }
}
