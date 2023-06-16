import 'package:flutter/material.dart';

class TeladeLogin extends StatefulWidget {
  const TeladeLogin({Key? key}) : super(key: key);

  @override
  _TeladeLoginState createState() => _TeladeLoginState();
}

class _TeladeLoginState extends State<TeladeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff58b4ba), Color(0xff004aad)],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        "BuscaUni",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          letterSpacing: 0.2,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Image.asset("imagens/pesquisador.png",
                          width: 80, height: 120, fit: BoxFit.fill),
                      Spacer(),
                      Image.asset(
                        "imagens/mapa teste.png",
                        width: 80,
                        height: 90,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 50,
                                icon: Image.asset(
                                  'imagens/google.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(width: 30),
                              IconButton(
                                iconSize: 50,
                                icon: Image.asset(
                                  'imagens/instagram.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(width: 30),
                              IconButton(
                                iconSize: 50,
                                icon: Image.asset(
                                  'imagens/facebook.png',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon: Icon(Icons.email),
                              hintText: "Username or E-mail",
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon: Icon(Icons.lock),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () => {},
                                child: Text(
                                  "Criar nova conta",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Esqueci minha senha",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff5de0e6), Color(0xff004aad)],
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
