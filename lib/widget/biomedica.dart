import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';
import 'package:vistas/widget/biotecnologia.dart';

void biomedica() {
  runApp(IngenieriaBiomedica());
}

class IngenieriaBiomedica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 18, 18),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              ContentSection(),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Te interesa?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Divider(color: Colors.white),
                    Row(
                      children: <Widget>[
                    Icon(
                      Icons.task_alt,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      size: 23,
                    ),
                    Text(
                      ' Objetivo',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                      ),
                    ),
                    
                    ],
                    ),
                    Text(
                      '\n Analizar, diseñar, evaluar, innovar y supervisar sistemas biológicos, fisicoquímicos, y tecnológicos para el control, producción, cumplimiento de normativas vigentes y solución de requerimientos ambientales, industriales, científicos y salud, aplicables al sector público y privado para elevar la competitividad bajo los estándares de calidad.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Divider(color: Colors.white),
                    Row(
                      children: <Widget>[
                    Icon(
                      Icons.co_present,
                      color: const Color.fromARGB(255, 244, 186, 45),
                      size: 23,
                    ),
                    Text(
                      ' Perfil de Ingreso',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                      ),
                    ),
                    
                    ],
                    ),
                    Text(
                      '\nEl aspirante a ingresar en el programa educativo de Ingeniería Biomédica deberá tener bases académicas sólidas en el área físico-matemática del nivel medio superior, conocimientos básicos de electrónica, química, biología e informática, habilidades para comunicarse correctamente de manera oral y escrita, mostrar interés por contribuir a mejorar la calidad de vida de las personas, mediante el uso y desarrollo de nueva tecnología aplicada a la medicina.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.white),
                    Row(
                      children: <Widget>[
                    Icon(
                      Icons.school,
                      color: const Color.fromARGB(255, 234, 87, 39),
                      size: 25,
                    ),
                    Text(
                      ' Perfil de Egreso',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                      ),
                    ),
                    
                    ],
                    ),
                    Text(
                      '\n El ingeniero Biomédico se caracteriza por su formación multidisciplinaria, que le permite identificar, diagnosticar, reparar, diseñar, mejorar y proponer alternativas de solución a las necesidades y requerimientos en el área de instrumentación y apoyo tecnológico en el área médica, con criterio investigativo e innovador y principios éticos, filosóficos y humanísticos. Es un profesional capacitado para dirigir, intervenir y asesorar en el funcionamiento de centros hospitalarios.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              HighlightSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 125,
                height: 50,
                child: Image.asset('assets/Resource/Img/NuevoLogoUPQROO-PNGOFICIAL-1024x410.png', fit: BoxFit.cover), // Espacio para imagen del logo
              ),
              SizedBox(width: 10),
              Text(
                'UPQROO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ],
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.white),
            onSelected: (value) {
              switch (value) {
                case '1':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => IngenieriaFinanciera()));
                  break;
                case '2':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => IngenieriaBiomedica()));
                  break;
                case '3':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => IngenieriaSoftware()));
                  break;
                case '4':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => IngenieriaBiotecnologia()));
                  break;
                case '5':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TerapiaFisica()));
                  break;
                case '6':
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Administracion()));
                  break;
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: '1', child: Text('Licenciatura en Ingeniería Financiera')),
              PopupMenuItem(value: '2', child: Text('Licenciatura en Ingeniería Biomédica')),
              PopupMenuItem(value: '3', child: Text('Ingeniería en Tecnologia Informatica')),
              PopupMenuItem(value: '4', child: Text('Ingeniería en Biotecnología')),
              PopupMenuItem(value: '5', child: Text('Licenciatura en Terapia Física')),
              PopupMenuItem(value: '6', child: Text('Licenciatura en Administración')),
            ],
          ),
        ],
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Licenciatura en Ingeniería Biomédica',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'La carrera de ingeniería Biomédica se puede definir como la aplicación de la ingeniería al servicio de la salud y se caracteriza por la confluencia de conocimientos de áreas como la Biología, Medicina, Física, Química, Matemáticas, Electrónica, informática e Ingeniería con el propósito de desarrollar aplicaciones tecnológicas para la mejora de la salud y la calidad de vida de la población.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/Resource/Img/Terapia.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class HighlightSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '"Tu vocación es el puente entre la tecnología y la vida; cada esfuerzo tuyo transforma el mundo."',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: SizedBox(
                    width: 100,  // Cambia según lo que necesites
                    height: 250,
                child: Image.asset(
                    'assets/Resource/Img/biomedica1.jpg',
                      fit: BoxFit.cover,
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'UNIVERSIDAD POLITÉCNICA DE QUINTANA ROO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    IconButton(
      icon: FaIcon(FontAwesomeIcons.facebook, color: const Color.fromARGB(255, 24, 119, 242)),
      onPressed: () {
        // Acción o URL si deseas abrir algo
      },
    ),
    IconButton(
      icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
      onPressed: () {},
    ),
    IconButton(
      icon: FaIcon(FontAwesomeIcons.twitter, color: const Color.fromARGB(255, 0, 67, 93)),
      onPressed: () {},
    ),
    IconButton(
      icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
      onPressed: () {},
    ),
  ],
),
          SizedBox(height: 10),
          Text(
            'Derechos Reservados UPQROO',
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
