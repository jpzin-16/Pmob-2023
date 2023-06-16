import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BuildContainerPerfil(context),
          SizedBox(height: 30),
          BuildPesquisa(context),
          SizedBox(height: 30),
          Expanded(child: BuildListaFaculdades(context)),
        ],
      ),
    );
  }
}

Widget BuildContainerPerfil(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 175,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      gradient: LinearGradient(
        colors: [Color(0xff5de0e6), Color(0xff004aad)],
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          left: 30,
          top: 30,
          child: Image.asset(
            'imagens/icone.png',
            fit: BoxFit.fill,
            width: 60,
            height: 60,
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Text(
            "Welcome, \nUsuário",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              letterSpacing: 0.2,
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 20,
          child: Image.asset(
            "imagens/chapeuzinho.png",
            width: 160,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

Widget BuildPesquisa(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: TextField(
      style: TextStyle(
        color: Color(0xff0e9099),
        fontSize: 18,
        fontFamily: 'Poppins',
      ),
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget BuildListaFaculdades(BuildContext context) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return CardFaculdade(context, index);
    },
  );
}

Widget CardFaculdade(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Card(
      color: Colors.grey[100],
      child: ListTile(
        leading: Image.asset(
          "imagens/UFAL.jpeg",
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title:
            Text("Nome faculdade", style: TextStyle(color: Color(0xff0e9099))),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Descrição da faculdade $index"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.grey),
              ],
            ),
          ],
        ),
        onTap: () {
          // Redirecionar para uma nova tela ou executar uma ação
        },
      ),
    ),
  );
}
