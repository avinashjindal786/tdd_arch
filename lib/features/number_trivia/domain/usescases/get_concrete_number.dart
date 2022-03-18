import 'package:dartz/dartz.dart';
import 'package:tdd_arch/core/error/failure.dart';
import 'package:tdd_arch/features/number_trivia/domain/entity/number_triva.dart';
import 'package:tdd_arch/features/number_trivia/domain/repo/number_trivia_repo.dart';

class GetConcreteNumbertrivia{

  final NumberTriviaRepo repo;
  GetConcreteNumbertrivia(this.repo);

  Future<Either<Failure,NumberTrivia>> excute({required int number}) async
  {
    return await repo.getConcreteNumberTrivia(number);
  }
}