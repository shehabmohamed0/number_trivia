import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({
    required int number,
    required String text,
  }) : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      NumberTriviaModel(
        text: json['text'],
        number: (json['number'] as num).toInt(),
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'number': number,
      };
}
