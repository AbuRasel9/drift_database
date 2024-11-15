import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_database/db/employee_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart'as p;
part 'database.g.dart';
@DriftDatabase(tables: [Employees])
class AppDb extends _$AppDb{
  AppDb():super(_openConnection());

  @override
  int get schemaVersion=>1;
}
LazyDatabase _openConnection(){
  return LazyDatabase(()async{
    final dbFolder=await getApplicationCacheDirectory();
    //create db file
    final file=File(p.join(dbFolder.path,"db.sqlite"));
    return NativeDatabase.createInBackground(file);
  });

}