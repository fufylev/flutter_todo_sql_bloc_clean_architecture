part of 'todos_db.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    //! если хотим чтобы база данных НЕ сохранялась в памяти телефона в виде файла то юзеам данный блок
    // return NativeDatabase.memory();

    //! если хотим чтобы база данных сохранялась в памяти телефона в виде файла то юзеам данный блок
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
