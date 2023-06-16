import 'package:flutter/material.dart';

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({Key? key}) : super(key: key);
  _TelaPesquisaState createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      drawer: BuildMenuPesquisa(),
      body: BuildContainerPesquisa(),
    );
  }
}

BuildAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 2,
    title: Text(
      "FILTRAR POR CATEGORIA",
      style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          letterSpacing: 0.2),
    ),
  );
}

BuildContainerPesquisa() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Container()],
  );
}

BuildMenuPesquisa() {
  return Drawer(
    elevation: 2,
    child: Row(
      children: [
        Column(
          children: [
            ElevatedButton(
              onPressed: () => {},
              child: Text(""),
            ),
          ],
        )
      ],
    ),
  );
}
