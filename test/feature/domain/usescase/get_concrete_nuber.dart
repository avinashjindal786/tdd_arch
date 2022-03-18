import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_arch/features/number_trivia/domain/entity/number_triva.dart';
import 'package:tdd_arch/features/number_trivia/domain/repo/number_trivia_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_arch/features/number_trivia/domain/usescases/get_concrete_number.dart';


class MockNumberTrivia extends Mock implements NumberTriviaRepo{

}

void main()
{
  late GetConcreteNumbertrivia usecase;
  late MockNumberTrivia mockNumberTrivia;

  setUp((){
    mockNumberTrivia = MockNumberTrivia();
    usecase = GetConcreteNumbertrivia(mockNumberTrivia);
  });

  final tnumber = 1;
  final tnumbertrivia = NumberTrivia(text: "test", number: 1);

  test(
      'should get trivia for the number from the repo',() async {

    when(mockNumberTrivia.getConcreteNumberTrivia(1)).thenAnswer((_) async => Right(tnumbertrivia));

    final result =await usecase.excute(number : tnumber);
    expect(result, Right(tnumbertrivia));
    verify(mockNumberTrivia.getConcreteNumberTrivia(42));
    verifyNoMoreInteractions(mockNumberTrivia);
  });

}