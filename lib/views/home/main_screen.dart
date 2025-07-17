import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopme/components/const_image.dart';
import 'package:shopme/components/widgets.dart';
import 'package:shopme/views/cart/cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              CupertinoIcons.line_horizontal_3,
              size: 30,
              color: Colors.blue,
            ),
            Text(
              'Storefront',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(CupertinoIcons.bell, size: 30, color: Colors.blue),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const SearchBox(),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: Get.width,
                  height: Get.height / 3.5,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 160, 56, 143),
                          Color.fromARGB(255, 120, 201, 238),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: SizedBox(
                                width: Get.width / 2.2,
                                height: Get.height / 3.5,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        top: 8,
                                      ),
                                      child: Text(
                                        'Get 15% off your first order!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text(
                                        'Unlock exclusive savings on your initial purchase. Limited time offer.',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: Get.height / 35),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                    255,
                                                    255,
                                                    255,
                                                    255,
                                                  ),
                                              foregroundColor:
                                                  const Color.fromARGB(
                                                    255,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 14,
                                                horizontal: 24,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text('Shop Now'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: Get.width / 3,
                          height: Get.height / 3,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                            image: DecorationImage(
                              image: AssetImage(ConstImage.banerImageHome),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text(
                      'Shop by Category',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  padding: const EdgeInsets.only(left: 18),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 212, 212, 211),

                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      width: 60,
                      margin: const EdgeInsets.only(right: 10),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.photo_fill_on_rectangle_fill,
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: Get.width / 3,
                    height: 30,

                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 30,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 234, 236),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '12',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(':'),
                          SizedBox(width: 8),

                          Container(
                            height: 60,
                            width: 30,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 234, 236),

                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '01',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(':'),
                          SizedBox(width: 8),

                          Container(
                            height: 60,
                            width: 30,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 234, 236),

                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '30',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      height: Get.height / 3,
                      color: Colors.white,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              ConstImage.imagenon,
                              width: 150,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: 8),

                          Column(
                            children: [
                              SizedBox(
                                width: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                    left: 16,
                                  ),
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing andfthshsrthsrthsrhsrhsrthsrhsrth typesetting industry. Lorem Ipsum has been the industry typesetting industry. Lorem Ipsum typesetting industry. Lorem Ipsum ',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                              SizedBox(height: 35),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('+'),
                                  ),

                                  SizedBox(width: 8),
                                ],
                              ),

                              SizedBox(height: 32),

                              SizedBox(
                                width: 200,
                                height: 60,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(() => CartScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 14,
                                      horizontal: 24,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text('Add'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    isScrollControlled: true,
                  );
                },
                child:
                    // ----------------------------------------------------------------------------
                    GridView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: Get.height / 1200,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
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
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12),
                                ),
                                child: Image.asset(
                                  ConstImage.imagenon,
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'pizza',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Pepperoni pizza',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      '\$44.5',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          '4.8',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                // ----------------------------------------------------------------------------
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
