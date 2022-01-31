import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
