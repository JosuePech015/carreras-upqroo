import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';
import 'package:vistas/widget/biotecnologia.dart';

void biotecnologia() {
  runApp(IngenieriaBiotecnologia());
}

class IngenieriaBiotecnologia extends StatelessWidget {
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
                      '\nAnalizar, diseñar, evaluar, innovar y supervisar sistemas biológicos, fisicoquímicos, y tecnológicos para el control, producción, cumplimiento de normativas vigentes y solución de requerimientos ambientales, industriales, científicos y salud, aplicables al sector público y privado para elevar la competitividad bajo los estándares de calidad. ',
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
                      '\nPara ingresar a la carrera de Ingeniería en Biotecnología se requiere: Haber concluido los estudios de bachillerato preferentemente en área físico-matemática o químico-biológica. Presentar y ser aceptado en el examen de ingreso. Los demás que marque la convocatoria de ingreso. Conocimientos previos de biología, química orgánica, matemáticas, física, inglés y computación.',
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
                      '\nValorar los bioprocesos, a través del análisis e interpretación de parámetros e indicadores de calidad, técnicas de laboratorio escala ensayo, metodologías pertinentes, normatividad y legislación vigentes, para contribuir al desarrollo de los bioproductos y fortalecer la aplicación de la biotecnología a nivel regional y nacional. ',
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
                  'Ingeniería en Biotecnología',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'La ingeniería en biotecnología está orientada a diseñar y mejorar procesos tecnológicos basados en sistemas vivos. La Biotecnología permite aislar y manipular biomoléculas y microorganismos mediante el uso de técnicas de biología molecular, microbiología y bioquímica con el objeto de producir nuevos medicamentos, procesos, alimentos, y plantas.',
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
                  image: AssetImage('assets/Resource/Img/Biotecnologia.png'),
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
                  '"Formar profesionales éticos y con valores en el área de Ingeniería en Biotecnología apegados al modelo basado en competencias capaces de proponer soluciones a las problemáticas actuales con una sólida formación científica, tecnológica e innovación."',
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
                    'assets/Resource/Img/biotec-8.jpg',
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
