import 'package:hive/hive.dart';


@HiveType(typeId: 0) // typeId ต้องไม่ซ้ำกัน
class Person {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  @HiveField(2)
  List<String> friends;

  Person(this.name, this.age, this.friends);
}
