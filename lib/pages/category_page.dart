import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryPage extends StatefulWidget {
  final String items;
 final  List< String> content;
 final  List< String> title;
 final  List< int> no;
  final List< String> end;

 const CategoryPage({super.key, required this.items, required this.no, required this.end, required this.title, required this.content});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late List<int> _initialNoValues;
  @override
  void initState() {
    super.initState();
    _initialNoValues = List<int>.from(widget.no); // initialize with same values as widget.no
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.items),
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: widget.title.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.h),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                color: Colors.blueGrey[700],
              ),
              height: 470.h,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (widget.no[index] > 0) {
                        setState(() {
                          widget.no[index]--;
                        });

                      } else {
                        setState(() {
                          widget.no[index];

                        });
                      }
                    },
                    child: Container(
                      color: const Color(0xffB8B7BE),
                      height: 90.h,
                      width: double.infinity,
                      child:Row(

                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: IconButton(
                                color: Colors.white,
                                onPressed: (){
                                  setState(() {
                                    // _resetCounter();
                                    widget.no[index] = _initialNoValues[index];
                                  });
                                },
                                icon: const Icon(Icons.restart_alt_rounded)),
                          ),
                          SizedBox(width: 120.w,),
                          Text(widget.no[index].toString(),
                            // _counter != _initialUnknownValue ? _counter.toString() : '${_initialUnknownValue}',
                            style: TextStyle(
                              fontSize: 50.sp,color: Colors.white,fontWeight: FontWeight.bold),),

                        ],
                      ) ,
                    ),
                  ),
                  SizedBox(
                    height: 360.h,
                    child: IntrinsicHeight(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text(widget.title[index],style: TextStyle(
                              fontSize: 20.sp,color: Colors.red,fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(widget.content[index],style: TextStyle(
                              fontSize: 22.sp,color: Colors.white),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(widget.end[index],style: TextStyle(
                              fontSize: 20.sp,color: Colors.green),
                            textDirection: TextDirection.rtl,
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}