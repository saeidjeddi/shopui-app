import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopme/views/category/categories.dart';
import 'package:shopme/views/home/main_screen.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(CupertinoIcons.search, color: Colors.grey),
          hintText: 'Search Products...',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => HomeScreen());
                },
                child: Icon(CupertinoIcons.home, size: 30, color: Color(0xFF5765C3))),
              InkWell(
                onTap: () {
                  Get.to(() => Categories());
                },
                child: Icon(
                  CupertinoIcons.list_dash,
                  size: 30,
                  color: Color(0xFF868890),
                ),
              ),
              Icon(CupertinoIcons.cart, size: 30, color: Color(0xFF868890)),
            ],
          ),
        ),
      ),
    );
  }
}
