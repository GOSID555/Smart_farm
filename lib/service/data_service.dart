import 'package:hive/hive.dart';
import '../models/planting_record.dart';

class PlantingRecordService {
  final String _boxName = 'plantings';

  Future<Box<PlantingRecord>> get _box async =>
      await Hive.openBox<PlantingRecord>(_boxName);

  /// CREATE
  Future<void> addRecord(PlantingRecord record) async {
    final box = await _box;
    await box.add(record);
  }

  /// READ ALL
  Future<List<PlantingRecord>> getAllRecords() async {
    final box = await _box;
    return box.values.toList();
  }

  /// READ by index
  Future<PlantingRecord?> getRecordAt(int index) async {
    final box = await _box;
    return box.getAt(index);
  }

  /// UPDATE
  Future<void> updateRecord(int index, PlantingRecord newRecord) async {
    final box = await _box;
    await box.putAt(index, newRecord);
  }

  /// DELETE
  Future<void> deleteRecord(int index) async {
    final box = await _box;
    await box.deleteAt(index);
  }

  /// DELETE ALL
  Future<void> clearAllRecords() async {
    final box = await _box;
    await box.clear();
  }
}
