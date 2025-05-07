import 'package:flutter/material.dart';
import 'package:smartfarm/models/app_color.dart';

class AddCropsDetail extends StatefulWidget {
  AddCropsDetail({super.key});

  @override
  State<AddCropsDetail> createState() => _AddCropsDetailState();
}

class _AddCropsDetailState extends State<AddCropsDetail> {
  late final TextEditingController _cropNameController;
  late final TextEditingController _plantingDateController;
  late final TextEditingController _harvestDateController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cropNameController = TextEditingController();
    _plantingDateController = TextEditingController();
    _harvestDateController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cropNameController.dispose();
    _plantingDateController.dispose();
    _harvestDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ชื่อพืช",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _cropNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "วันที่ปลูก",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100));

              if (pickeddate != null) {
                setState(() {
                  _plantingDateController.text =
                      "${pickeddate.day}/${pickeddate.month}/${pickeddate.year}";
                });
              }
            },
            controller: _plantingDateController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "วันที่เก็บเกี่ยว",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100));

              if (pickeddate != null) {
                setState(() {
                  _harvestDateController.text =
                      "${pickeddate.day}/${pickeddate.month}/${pickeddate.year}";
                });
              }
            },
            controller: _harvestDateController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "บันทึก",
                    style: TextStyle(
                        color: AppColor.color_White,
                        fontWeight: FontWeight.bold),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                )),
          )
        ],
      ),
    );
  }
}
