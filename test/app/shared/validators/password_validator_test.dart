import 'package:aula_testes/app/shared/validators/password_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late PasswordValidator passwordValidator;

  setUp(() {
    passwordValidator = PasswordValidator();
  });

  group(
    'validação da senha',
    () {
      test(
        'deve retornar uma mensagem de erro caso a senha seja null',
        () {
          final result = passwordValidator.validate();

          expect(result, equals('A senha é obrigatória'));
        },
      );

      test(
        'deve retornar uma mensagem de erro caso a senha seja vazia',
        () {
          final result = passwordValidator.validate(password: '');

          expect(result, equals('A senha é obrigatória'));
        },
      );

      test(
        'deve retornar uma mensagem de erro caso a senha seja menor que 6 caracteres',
        () {
          final result = passwordValidator.validate(password: 'ana');

          expect(
            result,
            equals('A senha deve possuir pelo menos 6 caracteres'),
          );
        },
      );

      test(
        'deve retornar uma mensagem de erro caso a senha não seja alfanumérica',
        () {
          final result = passwordValidator.validate(password: 'william');

          expect(result, equals('A senha deve ser alfanumérica'));
        },
      );

      test(
        'deve retornar null caso a senha seja válida',
        () {
          final result = passwordValidator.validate(password: 'william123');

          expect(result, isNull);
        },
      );
    },
  );
}
