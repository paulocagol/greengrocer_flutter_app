import 'package:flutter/material.dart';
import 'package:my_app/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomTextField(
                          prefixIcon: Icons.email,
                          labelText: 'Email',
                          padding: 5,
                        ),
                        const CustomTextField(
                          prefixIcon: Icons.lock,
                          labelText: 'Senha',
                          padding: 5,
                          isSecret: true,
                        ),
                        const CustomTextField(
                          prefixIcon: Icons.person,
                          labelText: 'Nome',
                          padding: 5,
                        ),
                        const CustomTextField(
                          prefixIcon: Icons.phone,
                          labelText: 'Celular',
                          padding: 5,
                        ),
                        const CustomTextField(
                          prefixIcon: Icons.note,
                          labelText: 'CPF',
                          padding: 5,
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
