import 'package:flutter/material.dart';
import 'package:smartfarm/models/app_color.dart';
import 'package:smartfarm/pages/field/setup_crop.dart';
import 'package:smartfarm/testdata/data.dart';

class DataPlant extends StatefulWidget {
  final Crops crop;
  const DataPlant({super.key, required this.crop});

  @override
  State<DataPlant> createState() => _DataPlantState();
}

class _DataPlantState extends State<DataPlant> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("สิ่งที่จะทำ"),
                  content: SizedBox(
                    height: 400,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              label: Text("รายละเอียด"), filled: true),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${date.year}/${date.month}/${date.day}'),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100));
                              if (newDate == null) return;
                              setState(() => date = newDate);
                            },
                            child: Text("เลือกวันที่"))
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(onPressed: () {}, child: Text("บันทึก"))
                  ],
                )),
        label: const Text(
          'Add',
          style: TextStyle(color: AppColor.color_White),
        ),
        icon: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                color: AppColor.color_Dark,
                child: Center(
                  child: Text(
                    "PIC",
                    style: TextStyle(color: AppColor.color_White, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.crop.name,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: SizedBox()),
                        Text("เก็บเกี่ยวอีก 135 วัน")
                      ],
                    ),
                    Text(widget.crop.des),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text("สถานะการเพาะปลูก",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SetupCrop(),
                                ));
                          },
                          child: Text(
                            "Setup",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Card(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("วันที่ปลูก"),
                                  Expanded(child: SizedBox()),
                                  Text('20/03/2025')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("พ่นยา"),
                                  Expanded(child: SizedBox()),
                                  Text('20/03/2025')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("ใส่ปุ๋ย"),
                                  Expanded(child: SizedBox()),
                                  Text('20/03/2025')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "รายละเอียดการลงทุน",
                      style: TextStyle(
                          color: AppColor.color_Dark,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Card(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('เมล็ดพันธุ์'),
                                  Expanded(child: SizedBox()),
                                  Text('9xxx กิโลกรัม'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('9xxx บาท')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('ปุ๋ย'),
                                  Expanded(child: SizedBox()),
                                  Text('9xxx กิโลกรัม'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('9xxx บาท')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('ยาต่างๆ'),
                                  Expanded(child: SizedBox()),
                                  Text('9xxx บาท')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "สิ่งที่ต้องทำ",
                      style: TextStyle(
                          color: AppColor.color_Dark,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("รดน้ำ"),
                                  Expanded(child: SizedBox()),
                                  Text('อีก 3 วัน')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("ใส่ปุ๋ย"),
                                  Expanded(child: SizedBox()),
                                  Text('อีก 6 วัน')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
