import 'package:flutter/material.dart';
import 'package:foodpanda/views/components/textfield_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants/color_const.dart';
import '../../constants/pics_const.dart';
import '../components/order_card.dart';

class FoodDeliveryScreen extends StatefulWidget {
  const FoodDeliveryScreen({super.key});

  @override
  State<FoodDeliveryScreen> createState() => _FoodDeliveryScreenState();
}

class _FoodDeliveryScreenState extends State<FoodDeliveryScreen> {
  @override
  void initState() {
    super.initState();
    PicsConst.getData();
  }

  @override
  Widget build(BuildContext context) {
    final sizew = MediaQuery.of(context).size.width * 1;

    final sizeh = MediaQuery.of(context).size.height * 1 > 800
        ? MediaQuery.of(context).size.height * 1
        : MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: sizew * 0.045, vertical: sizeh * 0.0080),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      spacing: sizew * 0.05,
                      children: [
                        Icon(
                          Icons.food_bank_outlined,
                          color: pink,
                          size: sizew * 0.075,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: sizeh * 0.005),
                          child: 'Food Delivery'
                              .text
                              .bold
                              .size(sizew * 0.045)
                              .make(),
                        ),
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
              const foodDelivery(text: 'Panda pick'),
              const foodDelivery(text: 'Panda exclusives'),
              const foodDelivery(text: 'All restaurants'),
              const foodDelivery(text: 'Popular'),
            ],
          ),
        ),
      ),
    );
  }
}

class foodDelivery extends StatelessWidget {
  const foodDelivery({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final sizew = MediaQuery.of(context).size.width * 1;

    final sizeh = MediaQuery.of(context).size.height * 1 > 800
        ? MediaQuery.of(context).size.height * 1
        : MediaQuery.of(context).size.height * 1;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: sizew * 0.028, vertical: sizeh * 0.013),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              text.text.size(sizew * 0.04).bold.make(),
            ],
          ),
        ),
        SizedBox(
          height: sizeh * 0.29,
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
        ),
      ],
    );
  }
}
