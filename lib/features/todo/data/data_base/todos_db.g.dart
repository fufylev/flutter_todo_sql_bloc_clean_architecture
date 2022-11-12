// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class TodosModel extends DataClass implements Insertable<TodosModel> {
  final String? todoId;
  final int? createdAt;
  final int? modifiedAt;
  final String? title;
  final String? description;
  const TodosModel(
      {this.todoId,
      this.createdAt,
      this.modifiedAt,
      this.title,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || todoId != null) {
      map['todo_id'] = Variable<String>(todoId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<int>(createdAt);
    }
    if (!nullToAbsent || modifiedAt != null) {
      map['modified_at'] = Variable<int>(modifiedAt);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      todoId:
          todoId == null && nullToAbsent ? const Value.absent() : Value(todoId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      modifiedAt: modifiedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(modifiedAt),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory TodosModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodosModel(
      todoId: serializer.fromJson<String?>(json['todoId']),
      createdAt: serializer.fromJson<int?>(json['createdAt']),
      modifiedAt: serializer.fromJson<int?>(json['modifiedAt']),
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'todoId': serializer.toJson<String?>(todoId),
      'createdAt': serializer.toJson<int?>(createdAt),
      'modifiedAt': serializer.toJson<int?>(modifiedAt),
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String?>(description),
    };
  }

  TodosModel copyWith(
          {Value<String?> todoId = const Value.absent(),
          Value<int?> createdAt = const Value.absent(),
          Value<int?> modifiedAt = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      TodosModel(
        todoId: todoId.present ? todoId.value : this.todoId,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        modifiedAt: modifiedAt.present ? modifiedAt.value : this.modifiedAt,
        title: title.present ? title.value : this.title,
        description: description.present ? description.value : this.description,
      );
  @override
  String toString() {
    return (StringBuffer('TodosModel(')
          ..write('todoId: $todoId, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(todoId, createdAt, modifiedAt, title, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodosModel &&
          other.todoId == this.todoId &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.title == this.title &&
          other.description == this.description);
}

class TodosCompanion extends UpdateCompanion<TodosModel> {
  final Value<String?> todoId;
  final Value<int?> createdAt;
  final Value<int?> modifiedAt;
  final Value<String?> title;
  final Value<String?> description;
  const TodosCompanion({
    this.todoId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  TodosCompanion.insert({
    this.todoId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<TodosModel> custom({
    Expression<String>? todoId,
    Expression<int>? createdAt,
    Expression<int>? modifiedAt,
    Expression<String>? title,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (todoId != null) 'todo_id': todoId,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
    });
  }

  TodosCompanion copyWith(
      {Value<String?>? todoId,
      Value<int?>? createdAt,
      Value<int?>? modifiedAt,
      Value<String?>? title,
      Value<String?>? description}) {
    return TodosCompanion(
      todoId: todoId ?? this.todoId,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (todoId.present) {
      map['todo_id'] = Variable<String>(todoId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<int>(modifiedAt.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('todoId: $todoId, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, TodosModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _todoIdMeta = const VerificationMeta('todoId');
  @override
  late final GeneratedColumn<String> todoId = GeneratedColumn<String>(
      'todo_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => uuid.v4());
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _modifiedAtMeta = const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<int> modifiedAt = GeneratedColumn<int>(
      'modified_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [todoId, createdAt, modifiedAt, title, description];
  @override
  String get aliasedName => _alias ?? 'todos';
  @override
  String get actualTableName => 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<TodosModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('todo_id')) {
      context.handle(_todoIdMeta,
          todoId.isAcceptableOrUnknown(data['todo_id']!, _todoIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {todoId};
  @override
  TodosModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodosModel(
      todoId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}todo_id']),
      createdAt: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}created_at']),
      modifiedAt: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}modified_at']),
      title: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(attachedDatabase, alias);
  }
}

abstract class _$TodosDb extends GeneratedDatabase {
  _$TodosDb(QueryExecutor e) : super(e);
  late final $TodosTable todos = $TodosTable(this);
  late final TodosDao todosDao = TodosDao(this as TodosDb);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}
