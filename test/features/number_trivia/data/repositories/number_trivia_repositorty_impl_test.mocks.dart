// Mocks generated by Mockito 5.0.17 from annotations
// in number_trivia/test/features/number_trivia/data/repositories/number_trivia_repositorty_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:number_trivia/core/network/network_info.dart' as _i3;
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart'
    as _i6;
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart'
    as _i5;
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart'
    as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeNumberTriviaModel_0 extends _i1.Fake
    implements _i2.NumberTriviaModel {}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i3.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}

/// A class which mocks [NumberTriviaRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteDataSource extends _i1.Mock
    implements _i5.NumberTriviaRemoteDataSource {
  MockRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.NumberTriviaModel> getConcreteNumberTrivia(int? number) =>
      (super.noSuchMethod(Invocation.method(#getConcreteNumberTrivia, [number]),
              returnValue: Future<_i2.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_0()))
          as _i4.Future<_i2.NumberTriviaModel>);
  @override
  _i4.Future<_i2.NumberTriviaModel> getRandomNumberTrivia() =>
      (super.noSuchMethod(Invocation.method(#getRandomNumberTrivia, []),
              returnValue: Future<_i2.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_0()))
          as _i4.Future<_i2.NumberTriviaModel>);
}

/// A class which mocks [NumberTriviaLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalDataSource extends _i1.Mock
    implements _i6.NumberTriviaLocalDataSource {
  MockLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.NumberTriviaModel> getLastNumberTrivia() =>
      (super.noSuchMethod(Invocation.method(#getLastNumberTrivia, []),
              returnValue: Future<_i2.NumberTriviaModel>.value(
                  _FakeNumberTriviaModel_0()))
          as _i4.Future<_i2.NumberTriviaModel>);
  @override
  _i4.Future<void> cacheNumberTrivia(_i2.NumberTriviaModel? triviaToCache) =>
      (super.noSuchMethod(
          Invocation.method(#cacheNumberTrivia, [triviaToCache]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}
