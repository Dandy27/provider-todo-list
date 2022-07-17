import 'package:sqflite_common/sqlite_api.dart';

import 'migration.dart';

class MigrationV3 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
create table todo(
  id Integer primary key autoincrement, 
  descricao varchar(500) not null, 
  data_hora datetimer
  finalizado integer
)
''');
  }

  @override
  void update(Batch batch) {
  }
}
