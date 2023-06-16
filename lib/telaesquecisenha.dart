import 'package:flutter/material.dart';

class TelaEsqueciSenha extends StatelessWidget {
  const TelaEsqueciSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildContainer(context),
          const SizedBox(height: 20),
          buildContainerEmail(context),
        ],
      ),
    );
  }

  Widget buildContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff5de0e6), Color(0xff004aad)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 30,
            top: 70,
            child: Text(
              'BuscaUni',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 100,
            bottom: 20,
            child: Image.asset(
              'imagens/pesquisador.png',
              height: 120,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Image.asset(
              'imagens/mapa teste.png',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainerEmail(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Column(
              children: [
                Image.asset(
                  'imagens/email.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  'Para recuperar a sua senha, informe o seu e-mail e enviaremos um código para a alteração da senha.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff0e9099),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              style: TextStyle(color: Color(0xff0e9099)),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xff0e9099)),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff5de0e6), Color(0xff004aad)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Enviar código',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
