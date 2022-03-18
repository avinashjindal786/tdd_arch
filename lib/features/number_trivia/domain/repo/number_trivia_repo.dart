import 'package:dartz/dartz.dart';
import 'package:tdd_arch/core/error/failure.dart';
import 'package:tdd_arch/features/number_trivia/domain/entity/number_triva.dart';

abstract class NumberTriviaRepo{

  Future<Either<Failure,NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();

}   