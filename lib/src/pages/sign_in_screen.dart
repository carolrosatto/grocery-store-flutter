import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_market/src/components/custom_text_field.dart';
import 'package:green_market/src/config/custom_colors.dart';
import 'package:green_market/src/pages/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Logo
                  Text.rich(
                    TextSpan(style: const TextStyle(fontSize: 40.0), children: [
                      const TextSpan(
                        text: "Green",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "grocer",
                        style:
                            TextStyle(color: CustomColors.customContrastColor),
                      )
                    ]),
                  ),
                  //Categories
                  SizedBox(
                    height: 30.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 25.0),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        pause: Duration.zero,
                        animatedTexts: [
                          FadeAnimatedText('Frutas'),
                          FadeAnimatedText('Verduras'),
                          FadeAnimatedText('Legumes'),
                          FadeAnimatedText('Carnes'),
                          FadeAnimatedText('Cereais'),
                          FadeAnimatedText('Laticíneos'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 40.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45.0),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //email
                    const CustomTextField(
                      icon: Icons.email,
                      label: "E-mail",
                    ),

                    //password
                    const CustomTextField(
                      icon: Icons.lock,
                      label: "Senha",
                      hasHideButton: true,
                    ),

                    //Login Button
                    SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),

                    //Forgot password Button
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Esqueceu a senha?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          )),
                    ),

                    //Divider
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text("Ou"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Register Button
                    SizedBox(
                      height: 50.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => const SignUpScreen()),
                            ),
                          );
                        },
                        child: const Text(
                          "Criar conta",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
