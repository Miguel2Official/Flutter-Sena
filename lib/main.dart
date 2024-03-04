import 'package:flutter/material.dart';
import 'hoja.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menú',
          style: TextStyle(color: Color.fromARGB(255, 7, 0, 69)), // aqui tambien Cambio de color de texto a pastel
        ),
        backgroundColor: Colors.lightBlue[100], // para cambiar el color color de fondo a pastel
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuButton(
              label: 'Datos Personales',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosPersonalesPage()),
                );
              },
            ),
            MenuButton(
              label: 'Estudios',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EstudiosPage()),
                );
              },
            ),
            MenuButton(
              label: 'Habilidades',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HabilidadesPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MenuButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,// probando cambios
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 246, 199, 214).withOpacity(0.5), // y aqui Cambio de color de fondo a pastel
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(fontSize: 18),
        ),
        child: Text(label),
      ),
    );
  }
}
