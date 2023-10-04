
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //obtener el tamano de la pantalla
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            cajapurpura(size),
            iconopersona(),
            loginform(context)
          ],
        ),
      ),
    );
  }

  Column loginform(BuildContext context) {
    return Column(
            children: [
              const SizedBox(height: 250,),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0, 5)
                    )
                  ]
                ),
                child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Login', 
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        child: Form(
                          child: Column(
                            children: [
                              TextField(
                                autocorrect: false
                              
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                  ),
              ),
              const SizedBox(
                        height: 50,
              ),
              const Text('Crear una nueva cuenta',
                style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                
              ),),
            ],
          );
  }

  SafeArea iconopersona() {
    return SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              child: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 100,
              ),
            ),
          );
  }

  Container cajapurpura(Size size) {
    return Container(
            width: double.infinity,
            height: size.height * 0.4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(63, 63, 156, 1),
                Color.fromRGBO(90, 70, 178, 1),
              ])
            ),
            child: Stack(
              children: [
                Positioned(top: 90, left: 30, child: burbuja()),
                Positioned(top: -40, left: -30, child: burbuja()),
                Positioned(top: -50, right: -20, child: burbuja()),
                Positioned(bottom: -50, left: 10, child: burbuja()),
                Positioned(bottom: 70, right: 30, child: burbuja())
              ],
            ),
          );
  }

  Container burbuja() {
    return Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromRGBO(255, 255, 255, 0.05)
                ),
              );
  }
}