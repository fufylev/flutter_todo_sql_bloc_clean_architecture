import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.g.dart';

@JsonSerializable()
class TodoEntity {
  TodoEntity({
    this.todoId,
    required this.title,
    required this.description,
    this.createdAt,
    this.modifiedAt,
  });

  final String? todoId;
  final String title;
  final String description;
  final int? createdAt;
  final int? modifiedAt;

  @override
  String toString() {
    return 'TodoEntity('
        'todoId: $todoId, '
        'title: $title, '
        'description: $description, '
        'createdAt: $createdAt, '
        'modifiedAt: $modifiedAt'
        ')';
  }

  factory TodoEntity.fromJson(Map<String, dynamic> json) => _$TodoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TodoEntityToJson(this);

  TodoEntity copyWith({
    String? todoId,
    String? title,
    String? description,
    int? createdAt,
    int? modifiedAt,
  }) {
    return TodoEntity(
      todoId: todoId ?? this.todoId,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
    );
  }
}
