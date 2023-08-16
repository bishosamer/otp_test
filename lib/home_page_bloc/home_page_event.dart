part of 'home_page_bloc.dart';

@immutable
abstract class HomePageEvent {}

class SendOtp extends HomePageEvent {
  final String phoneNo;

  SendOtp(this.phoneNo);
}

class SignIn extends HomePageEvent {
  final String smsCode;

  SignIn(this.smsCode);
}
