import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_test/home_page_bloc/home_page_bloc.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  late String phoneNumber;
  late String smsCode;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              if (state is Success) {
                return const Center(
                  child: Text('SUCCESS!!!'),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      onChanged: (value) => phoneNumber = value,
                      decoration:
                          const InputDecoration(labelText: "Phone Number"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<HomePageBloc>().add(SendOtp(phoneNumber));
                      },
                      child: const Text("Send OTP"),
                    ),
                    TextFormField(
                      onChanged: (value) => smsCode = value,
                      decoration:
                          const InputDecoration(labelText: "Verification Code"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<HomePageBloc>().add(SignIn(smsCode));
                      },
                      child: const Text("Sign In"),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
