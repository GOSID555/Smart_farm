import 'package:flutter/material.dart';

class SetupCrop extends StatelessWidget {
  const SetupCrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setup"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("วันที่ปลูก : "),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'ใส่วัน....'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("วันที่เก็บเกี่ยว : "),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'ใส่วัน....'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("วันที่พ่นยา : "),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'ใส่วัน....'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
