import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopme/components/const_image.dart';
import 'package:shopme/components/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(CupertinoIcons.back),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(width: Get.width / 5),
            const Text('Shopping Cart'),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.width,
                      height: Get.height / 4,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: Get.width / 3,
                                  height: Get.height / 7,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,

                                    image: DecorationImage(
                                      image: AssetImage(ConstImage.imagenon),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: SizedBox(
                                  width: 150,
                                  height: 60,
                                  child: Text(
                                    'Wireless Noise-Cancelling Headphones',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 150,
                                height: 40,

                                child: Text(
                                  'Immersive sound, comfortable fit.',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      117,
                                      115,
                                      115,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 32),
                              SizedBox(
                                width: 150,
                                height: 40,

                                child: Text(
                                  '\$ 500',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      89,
                                      0,
                                      255,
                                    ),
                                    fontWeight: FontWeight.w800,

                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              SizedBox(height: 70),
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Icon(
                                  CupertinoIcons.delete,
                                  color: Colors.red,
                                ),
                              ),

                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          60,
                                          128,
                                          122,
                                          122,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(child: Text('-')),
                                    ),
                                    SizedBox(width: 8),

                                    Text('1'),

                                    SizedBox(width: 8),
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          60,
                                          128,
                                          122,
                                          122,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(child: Text('+')),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width,
                  height: Get.height / 6,

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),

                    borderRadius: BorderRadius.circular(8),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Voucher Code',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: Get.width / 1.5,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter voucher code ',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  121,
                                  165,
                                  240,
                                ),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 24,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text('Apply'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width,
                  height: Get.height / 3.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 255, 255, 255),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Subtotal'), Text('\$489.96')],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Shipping'), Text('\$489.96')],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Estimated Tax'), Text('\$39.20')],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
                        child: Divider(
                          color: const Color.fromARGB(255, 119, 115, 115),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                              ),
                            ),

                            Text(
                              '\$534.16',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //======================
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 94, 255),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: Get.height / 50, horizontal: Get.width / 3.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Proceed to Checkout'),
              ),


SizedBox(height: 16,)



              
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
