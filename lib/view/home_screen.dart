import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mytestapp/components/image_cunst.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'search',
                      hintStyle: TextStyle(color: Colors.white54),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[800],
                    ),
                    onChanged: (text) {
                      print('text search : $text');
                    },
                  ),
                ),

                SizedBox(height: 16),
                SizedBox(
                  width: Get.width,
                  height: Get.height / 5,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 16 : 0,
                          right: 8,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              width: Get.width / 1.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageCunst.imageNot),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 16),
                SizedBox(
                  width: Get.width,
                  height: Get.height / 9,
                  child: ListView.builder(
                    itemCount: 16,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 16 : 0,
                          right: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(ImageCunst.imageNotUser),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Container(
                  color: Colors.red,
                  width: Get.width,
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ShaderMask(
                          shaderCallback: (bounds) =>
                              LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 75, 70, 70),
                                  Color.fromARGB(255, 8, 8, 8),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(
                                Rect.fromLTWH(
                                  0,
                                  0,
                                  bounds.width,
                                  bounds.height,
                                ),
                              ),
                          child: const Text(
                            'discount',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
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
                                      ImageCunst.imageNot,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
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

                                      SizedBox(height: 32,),

                                      SizedBox(
                                        width: 200,
                                        height: 60,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blueAccent,
                                            foregroundColor: Colors.white,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 14,
                                              horizontal: 24,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                8,
                                              ),
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
                        child: SizedBox(
                          width: Get.width,
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: index == 0 ? 16 : 0,
                                  right: 8,
                                ),
                                child: Container(
                                  height: 200,
                                  width: Get.width / 3,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            ImageCunst.imageNot,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const Text(
                                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('price'),
                                            Text(
                                              '20000',
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),

                SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: Get.width,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(ImageCunst.imageNot),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // This SizedBox creates space at the bottom for the Positioned widget
                SizedBox(
                  height: 100,
                ), // Height of your Positioned widget + some padding
              ],
            ),
          ),
        ),

        // This is now a direct child of Stack
        Positioned(
          right: 60,
          left: 60,
          bottom: 35,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(32),
            ),

            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home, size: 40),
                    Icon(Icons.login, size: 40),
                    Icon(Icons.post_add, size: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
