import 'package:hive/hive.dart';

part 'planting_record.g.dart'; // ใช้สำหรับ build adapter

@HiveType(typeId: 0)
class PlantingRecord extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  DateTime plantingDate;

  @HiveField(2)
  DateTime? harvestDate;

  @HiveField(3)
  List<String> activities; // เช่น "รดน้ำ", "ใส่ปุ๋ย"

  @HiveField(4)
  double investment; // เช่น ค่าเมล็ดพันธุ์ ฯลฯ

  PlantingRecord({
    required this.name,
    required this.plantingDate,
    this.harvestDate,
    this.activities = const [],
    this.investment = 0.0,
  });
}
