// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoEntity _$TodoEntityFromJson(Map<String, dynamic> json) => TodoEntity(
      todoId: json['todoId'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as int?,
      modifiedAt: json['modifiedAt'] as int?,
    );

Map<String, dynamic> _$TodoEntityToJson(TodoEntity instance) =>
    <String, dynamic>{
      'todoId': instance.todoId,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
    };
