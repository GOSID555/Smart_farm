import 'package:flutter/material.dart';
import 'package:smartfarm/models/app_color.dart';
import 'package:smartfarm/pages/field/add_crop.dart';
import 'package:smartfarm/pages/field/data_plant.dart';
import 'package:smartfarm/testdata/data.dart';

class FieldPage extends StatelessWidget {
  final String name;
  const FieldPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crop"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCrop(),
            ),
          );
        },
        label: const Text(
          'Add',
          style: TextStyle(color: AppColor.color_White),
        ),
        icon: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mockCrops.length,
              itemBuilder: (context, index) {
                final crop = mockCrops[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DataPlant(
                          crop: crop,
                        ),
                      ));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(crop.name),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
