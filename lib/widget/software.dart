import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';
import 'package:vistas/widget/biotecnologia.dart';

void software() {
  runApp(IngenieriaSoftware());
}

class IngenieriaSoftware extends StatelessWidget {
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
                      '\n Aplicar métodos y técnicas para resolver los problemas de construcción y de proyectos informáticos, específicamente de desarrollo de software, utilizando normas, metodologías, procedimientos y herramientas modernas y estandarizadas.',
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
                      '\n Bachillerato terminado en cualquiera de sus modalidades (General, Técnico ó Propedéutico en Ciencias Físico–Matemáticas). Amplio sentido de responsabilidad, orden y disciplina. Conocimientos básicos sobre computación y razonamiento lógico matemático.',
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
                      '\n El Ingeniero en Software egresado de las Universidades Politécnicas, tiene una formación integral basada en competencias, con conocimientos, actitudes, habilidades y destrezas para automatizar procesos mediante el diseño, desarrollo o actualización de sistemas de software, lo que le permite interactuar en diferentes campos de acción y desempeñarse mejor en la empresa, institución u organizaron pública o privada de los sectores industrial, comercial y de servicios; en la áreas de: Diseño y desarrollo de software a la medida y/o genérico de calidad. Gestión, administración e implantación de proyectos de innovación el área de software. Integración de nuevas soluciones de software a servicios modernos como el comercio electrónico.',
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
                  'Ingeniería en Software',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "En la carrera de Ingeniería en Software, el profesionista estará facultado para diseñar, desarrollar y mejorar la calidad de productos de software; especificar los métodos y las herramientas para aumentar la productividad de los desarrolladores de software; controlar los procesos de manera eficiente; aplicar los estándares internacionales para construir software de alta calidad.",
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
                  image: AssetImage('assets/Resource/Img/Software.png'),
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
                  '"Investigación en el campo del desarrollo, reingeniería de las tecnologías de la información, Soporte técnico y estratégico a la infraestructura de tecnologías de informació "',
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
                    'assets/Resource/Img/software-footer.jpeg',
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