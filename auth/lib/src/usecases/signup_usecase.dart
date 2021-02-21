import 'package:async/async.dart';

import '../domain/signup_service_contract.dart';
import '../domain/token.dart';

class SignUpUseCase {
  final ISignUpService _authService;

  SignUpUseCase(this._authService);

  Future<Result<Token>> execute(
    String name,
    String email,
    String password,
  ) async {
    return await _authService.signUp(name, email, password);
  }
}
