import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:mobile_application/component/my_iconbutton.dart";
import "package:mobile_application/component/my_textbutton.dart";
import "package:mobile_application/component/my_button.dart";
import "package:mobile_application/component/my_textfield.dart";

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {
    if(emailController.text !="" && passwordController.text != "") {
      print('Good job!');
    } else {
      print('Please input your email and password!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, are you ready to go?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )
              ),
              const SizedBox(height: 10,),
              Text(
                "Please sign in with your email and password.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                )
              ),
              const SizedBox(height: 20,),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email', 
                labelText: 'Email', 
                obscureText: false,
              ),
              const SizedBox(height: 20,),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password', 
                labelText: 'Password', 
                obscureText: true,
              ),
              const SizedBox(height: 25,),
              const MyTextButton(labelText: 'Forget password?', pageRoute: 'forget?',),
              const SizedBox(height: 25,),
              MyButton(onTap: signInUser, hintText: 'sign in'),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'assets/img/facebook_icon.png'),
                  SizedBox(width: 10),
                  MyIconButton(imagePath: 'assets/img/apple_icon.png'),
                ],
              ),

              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Not a member?', style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),),
                    const MyTextButton(labelText: 'Register now!', pageRoute: 'register',),
                  ],
                ),
              ),
              const Spacer(),
            ],
          )
        )
      ),
    );
  }
}