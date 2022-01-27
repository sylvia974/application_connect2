import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, //
        appBar: AppBar(
          title: Text('Connexion'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: MyConnect(),
      ),
    ),
  );
}

class MyConnect extends StatefulWidget {
  const MyConnect({Key? key}) : super(key: key);

  @override
  _MyConnectState createState() => _MyConnectState();
}

class _MyConnectState extends State<MyConnect> {
  bool _isSecret = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(55.0),
            child: Text(
              'Connection',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 35.0),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nom',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.blueAccent,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  maxLength: 25,
                  decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      labelText: 'Entrer votre nom',
                      hintText: 'Ex : DOE',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.blueAccent,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: _isSecret,
                  maxLength: 25,
                  decoration: const InputDecoration(
                      icon: const Icon(Icons.login),
                      labelText: 'Entrer votre mot de passe',
                      hintText: 'Ex : gh4EFDaG',
                      border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15.0),
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {},
                child: const Text(
                  'Se Connecter ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10.0),
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "S'enregistrer ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(10.0),
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Mot de passe oublié?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          backgroundColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
