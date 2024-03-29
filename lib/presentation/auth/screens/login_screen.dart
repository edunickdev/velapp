// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vel_app/presentation/shared/widgets/custom_text_input.dart';

class LoginScreen extends StatelessWidget {
  
  static String name = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Welcome to \n VelApp',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Form(
                child: Column(
                  children: [
                    const CustomTextInput(
                      'User email',
                      autofocus: false,
                      heightCursor: 25,
                      keyboardType: TextInputType.emailAddress,
                      alignText: TextAlign.center,
                      customIcon: Icon(Icons.email_outlined),
                      validations: [isEmail],
                    ),
                    const CustomTextInput(
                      'Your password',
                      heightCursor: 25,
                      keyboardType: TextInputType.text,
                      alignText: TextAlign.center,
                      password: true,
                      customIcon: Icon(Icons.password_outlined),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // una vez configurada la autenticación debería
                          // ser popAndPushNamed
                          context.push('/requisite');
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).hoverColor),
                        ),
                        onPressed: () {
                          context.push('/sign-in');
                        },
                        child: const Text(
                          'new here? register.',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
