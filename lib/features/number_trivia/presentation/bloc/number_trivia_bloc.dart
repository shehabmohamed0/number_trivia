import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia/core/util/input_converter.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

part 'number_trivia_event.dart';

part 'number_trivia_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  NumberTriviaBloc({
    required GetConcreteNumberTrivia concrete,
    required GetRandomNumberTrivia random,
    required this.inputConverter,
  })  : getConcreteNumberTrivia = concrete,
        getRandomNumberTrivia = random,
        super(NumberTriviaEmptyState()) {
    on<GetTriviaForConcreteNumber>(_getTriviaForConcreteNumber);
  }

  void _getTriviaForConcreteNumber(
      GetTriviaForConcreteNumber event, Emitter<NumberTriviaState> emit) {
    final inputEither =
        inputConverter.stringToUnsignedInteger(event.numberString);

    inputEither.fold(
      (failure) => emit(
        const NumberTriviaErrorState(message: INVALID_INPUT_FAILURE_MESSAGE),
      ),
      (integer) async {
        emit(NumberTriviaLoadingState());
        final failureOrTrivia = await getConcreteNumberTrivia(
          Params(number: integer),
        );

        failureOrTrivia.fold(
          (failure) => emit(NumberTriviaErrorState(message: failure)),
          (trivia) => emit(
            NumberTriviaLoadedState(trivia: trivia),
          ),
        );
      },
    );
  }
}
