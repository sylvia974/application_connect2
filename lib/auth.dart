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
          SizedBox(height: 80.0),
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: const Text(
              'AH',
              style: TextStyle(color: Colors.white),
            ),
            radius: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
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
          SizedBox(height: 25.0),
          Form(
            child: Column(
              children: [
                // new Image.asset("assets/fon1.jpg"),
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
                        icon: const Icon(Icons.lock_rounded),
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
                        onPressed: () {},
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
