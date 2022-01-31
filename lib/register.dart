import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  var _isSecret = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    SizedBox(height: 80.0),
                    Text(
                      'Inscription',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        letterSpacing: 2.5,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 80.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        maxLength: 25,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            //icon: const Icon(Icons.person),
                            labelText: 'Nom complet',
                            //hintText: 'Ex : DOE',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        maxLength: 25,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            //icon: const Icon(Icons.person),
                            labelText: 'Email',
                            //hintText: 'Ex : DOE',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        obscureText: _isSecret,
                        maxLength: 25,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            //icon: const Icon(Icons.person),
                            labelText: 'Mot de passe',

                            //hintText: 'Ex : DOE',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        obscureText: _isSecret,
                        maxLength: 25,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            //icon: const Icon(Icons.person),
                            labelText: 'Confirmer le mot de passe',
                            //hintText: 'Ex : DOE',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    const SizedBox(height: 60),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15.0),
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          backgroundColor: Colors.blueAccent,
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
