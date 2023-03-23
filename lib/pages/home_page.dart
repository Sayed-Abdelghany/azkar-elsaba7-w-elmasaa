import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sub1/const/category_list.dart';
import 'package:sub1/const/items_list.dart';
import 'package:sub1/pages/category_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('آذكار الصباح والمساء',
          style: TextStyle(fontSize: 28.sp),),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryPage(
                  items: items[index],
                  no: no[index],
                  end: end[index],
                  title: title[index],
                  content: content[index],
                )),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110.h,
                color: const Color(0xffB8B7BE),
                child: Center(
                  child: Text(items[index],
                    style: TextStyle(color: Colors.white,fontSize: 30.sp),),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}