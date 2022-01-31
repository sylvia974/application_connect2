import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'register.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Connexion'),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: MyConnect(),
        ),
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
          SizedBox(height: 100.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
            backgroundColor: Colors.blueAccent,
            radius: 80,
          ),
          SizedBox(height: 80.0),
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
                        prefixIcon: Icon(Icons.person),
                        //icon: const Icon(Icons.person),
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
                        'Mot de passe',
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
                        prefixIcon: Icon(Icons.lock_rounded),
                        //icon: const Icon(Icons.lock_rounded),
                        labelText: 'Entrer votre mot de passe',
                        hintText: 'Ex : gh4EFDaG',
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
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
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                          //backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const register()),
                          );
                        },
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                          //backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Mot de passe oublié?',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                            //backgroundColor: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
