import 'package:aula_testes/app/shared/auth/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Auth auth;

  setUp(() {
    auth = Auth();
  });

  group(
    'validação do cadastro',
    () {
      test(
        'deve retornar uma mensagem para um email e senha inválidos',
        () {
          final result = auth.register('william', '123');

          expect(result, isA<String>());
        },
      );

      test(
        'deve retornar null para um email e senha válidos',
        () {
          final result = auth.register('william@gmail.com', 'william123');

          expect(result, isNull);
        },
      );
    },
  );
}
