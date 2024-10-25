
abstract class AuthStates{}

class IntialState extends AuthStates{}
class LogInLoadingState extends AuthStates{}
class LogInSuccessState extends AuthStates {
  LogInSuccessState();

 
}
class LogInFailedState extends AuthStates{
  LogInFailedState({
    required this.message,
  });
  String ?message;
}

