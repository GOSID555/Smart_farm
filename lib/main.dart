import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartfarm/models/planting_record.dart';
import 'package:smartfarm/pages/loading_page/load_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // เริ่มต้น Hive
  await Hive.initFlutter();
  Hive.registerAdapter(PlantingRecordAdapter()); // สำคัญ!
  await Hive.openBox<PlantingRecord>('plantings'); // ชื่อ box

  runApp(RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Load_Page(),
      ),
    );
  }
}
