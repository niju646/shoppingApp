import 'package:flutter/material.dart';
import 'package:shoppingapp/widgets/container_button_model.dart';

class ProductDetailsPopup extends StatelessWidget {
  final TextStyle istyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  final List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Size: ", style: istyle),
                          SizedBox(height: 20),
                          Text("Color: ", style: istyle),
                          SizedBox(height: 20),
                          Text("Total: ", style: istyle),
                          SizedBox(height: 20),
                        ],
                      ),
                      SizedBox(width: 30), // Spacing between columns
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Size Options
                          Row(
                            children: [
                              Text("S", style: istyle),
                              SizedBox(width: 20),
                              Text("M", style: istyle),
                              SizedBox(width: 20),
                              Text("L", style: istyle),
                              SizedBox(width: 20),
                              Text("XL", style: istyle),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Color Selection
                          Row(
                            children: List.generate(
                              clrs.length,
                              (i) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 6),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: clrs[i],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),

                          // Quantity Selection
                          Row(
                            children: [
                              Text("-", style: istyle),
                              SizedBox(width: 20),
                              Text("1", style: istyle),
                              SizedBox(width: 20),
                              Text("+", style: istyle),
                            ],
                          ),
                          SizedBox(height: 30),

                          // Total Payment
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total payment", style: istyle),
                              SizedBox(width: 40,),
                              Text(
                                "\$40.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFDB3022),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Checkout Button
                          InkWell(
                            onTap: () {
                              // Add checkout functionality here
                            },
                            child: Container(
                              width:300,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  "Checkout",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        itext: "Buy Now",
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        bgColor: Colors.redAccent,
      ),
    );
  }
}
