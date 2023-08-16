import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  late String verificationCode;

  Future<void> _signInWithPhoneNumber(String smsCode) async {
    AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationCode,
      smsCode: smsCode,
    );

    // Sign in with the credential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  HomePageBloc() : super(HomePageInitial()) {
    on<SendOtp>((event, emit) async {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: event.phoneNo,
        verificationCompleted: (PhoneAuthCredential credential) {
          // Auto verification if possible (e.g., instant phone number detection)
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
          emit(Error(e.message.toString()));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print('time out');
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          verificationCode = verificationId;
        },
      );
    });
    on<SignIn>((event, emit) async {
      await _signInWithPhoneNumber(event.smsCode);
      emit(Success());
    });
  }
}
