import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String _phoneNumber = "";
  String _verificationCode = "";

  Future<void> _verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: _phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        // Auto verification if possible (e.g., instant phone number detection)
      },
      verificationFailed: (FirebaseAuthException e) {
        // Handle verification failure
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Called when the auto-retrieval timer expires
      },
      codeSent: (String verificationId, int? forceResendingToken) {},
    );
  }

  Future<void> _signInWithPhoneNumber() async {
    AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationCode,
      smsCode: _verificationCode,
    );

    // Sign in with the credential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) => _phoneNumber = value,
            decoration: const InputDecoration(labelText: "Phone Number"),
          ),
          ElevatedButton(
            onPressed: _verifyPhoneNumber,
            child: const Text("Send OTP"),
          ),
          TextFormField(
            onChanged: (value) => _verificationCode = value,
            decoration: const InputDecoration(labelText: "Verification Code"),
          ),
          ElevatedButton(
            onPressed: _signInWithPhoneNumber,
            child: const Text("Sign In"),
          ),
        ],
      ),
    );
  }
}
