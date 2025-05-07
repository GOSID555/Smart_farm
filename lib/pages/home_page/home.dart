import 'package:flutter/material.dart';
import 'package:smartfarm/models/app_color.dart';
import 'package:smartfarm/pages/field/Field_Page.dart';
import 'package:smartfarm/pages/field/add_crop.dart';
import 'package:smartfarm/testdata/data.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  Crops? selectedCrop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.color_Dark,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "HI,",
                          style: TextStyle(
                              color: AppColor.color_White,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "GOSID",
                          style: TextStyle(
                              color: AppColor.color_White,
                              fontSize: 30,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: AppColor.color_White,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.settings,
                          color: AppColor.color_White,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Bangkok",
                style: TextStyle(
                    color: AppColor.color_White,
                    fontSize: 32,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "28'C",
                style: TextStyle(
                    color: AppColor.color_White,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cloudy",
                    style: TextStyle(
                        color: AppColor.color_White,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.wb_cloudy_outlined,
                    color: AppColor.color_White,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text(
                    "My Field",
                    style: TextStyle(
                        color: AppColor.color_White,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FieldPage(
                                  name: '',
                                )),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: AppColor.color_White,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              mockCrops.isEmpty
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddCrop(),
                          ),
                        );
                      },
                      child: Text('Add Data'),
                    )
                  : SizedBox(
                      height: 200,
                      child: ListView.separated(
                        itemCount: mockCrops.length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 12,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return buildCard(index);
                        },
                      ),
                    )
            ],
          ),
        ));
  }

  Widget buildCard(int index) {
    final crop = mockCrops[index];
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.color_White),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          crop.name,
          style: TextStyle(color: AppColor.color_White),
        ),
      ),
    );
  }
}
