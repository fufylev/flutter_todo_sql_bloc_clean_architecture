import 'package:flutter/foundation.dart';

abstract class UseCase<Type, Params> {
  Future<UseCaseResult<Type>> call(Params params);

  @protected
  Future<UseCaseResult<Type>> innerCall(Future<Type> Function() func) async {
    try {
      final result = await func.call();
      return UseCaseResult.successful(result);
    } catch (e) {
      return UseCaseResult.error(e);
    }
  }
}

abstract class StreamUseCase<Type, Params> {
  Stream<UseCaseResult<Type>> call(Params params);

  Future<void> cancel();

  @protected
  Future<UseCaseResult<Type>> innerCall(Future<Type> Function() func) async {
    try {
      final result = await func.call();
      return UseCaseResult.successful(result);
    } catch (e) {
      return UseCaseResult.error(e);
    }
  }
}

abstract class SyncUseCase<Type, Params> {
  UseCaseResult<Type> call(Params params);

  @protected
  UseCaseResult<Type> innerCall(Type Function() func) {
    try {
      final result = func.call();
      return UseCaseResult.successful(result);
    } catch (e) {
      return UseCaseResult.error(e);
    }
  }
}

class EmptyUseCaseParams {}

class UseCaseResult<T> {
  final T? result;
  final Object? exception;

  UseCaseResult(this.result, this.exception);

  factory UseCaseResult.successful(T? result) => UseCaseResult(result, null);

  factory UseCaseResult.error(Object e) => UseCaseResult(null, e);

  bool get isSuccessful => exception == null;
}
