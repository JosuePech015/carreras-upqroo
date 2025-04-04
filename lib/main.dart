import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';
import 'package:vistas/widget/biotecnologia.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              HeroSection(),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TU UNIVERSIDAD',
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
                      Icons.view_column,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      size: 23,
                    ),
                    Text(
                      ' Historia',
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                      ),
                    ),
                    
                    ],
                    ),
                    Text(
                      '\n Fundada en el año 2010, la Universidad Politécnica de Quintana Roo, es una institución pública que imparte educación superior basada en competencias para preparar a profesionales con una sólida formación científica y un liderazgo tecnológico con base en valores que coadyuven al progreso económico y social del estado de Quintana Roo respetando el medio ambiente y la cultura.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Divider(color: Colors.white),
                  ],
                ),
              ),
              EducationSection(),
              TestimonialSection(),
              ContactSection(),
              Test(),
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
              PopupMenuItem(value: '3', child: Text('Ingeniería en Software')),
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

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Resource/Img/hero.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.black.withOpacity(0.5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'UNIVERSIDAD POLITÉCNICA DE QUINTANA ROO\n\nFormando Triunfadores',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nuestra Universidad',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('La Universidad cuenta con instalaciones con tecnología de punta, desde laboratorios para microorganismos, hasta espacios para entrenamiento de terapia física. Los alumnos que integran este orgulloso instituto buscan no solo completar sus metas al perseguir sus sueños, buscan sobresalir en el mundo laboral como verdaderos profesionales con altos estándares en sus valores y competencias.',
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class TestimonialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/Resource/Img/cancun2.jpg'),
          fit: BoxFit.cover,
        ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            '"Sean Bienvenidos estudiantes al primer paso de su futuro, Cancún Quintana Roo es uno de los destinos favoritos en el mundo por su gran atractivo turístico."\n\n- Laura Johnson',
            style: TextStyle(color: const Color.fromARGB(0, 255, 255, 255), fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contáctanos',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          //Direccion
          SizedBox(height: 10),
          Text('Direccion', style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 10),
          Row(
          children: <Widget>[
            Icon(
                Icons.room,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 23,
              ),
                Text(
                  '  Smza. 255, Mza. 11, Lote 1119-33 77500 Cancún, México',
                  style: TextStyle(color: Colors.white, fontSize: 15,
                  ),
              ),
              ],
            ),
            //Telefono
          SizedBox(height: 10),
          Text('Telefono', style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 10),
          Row(
          children: <Widget>[
            Icon(
                Icons.call,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 23,
              ),
                Text(
                  '  998 2831 859',
                  style: TextStyle(color: Colors.white, fontSize: 15,
                  ),
              ),
              ],
            ),
            //Correo
          SizedBox(height: 10),
          Text('Correo', style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 10),
          Row(
          children: <Widget>[
            Icon(
                Icons.email,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 23,
              ),
                Text(
                  '  prensaydifusion@upqroo.edu.mx',
                  style: TextStyle(color: Colors.white, fontSize: 15,
                  ),
              ),
              ],
            ),
          //Horario
          SizedBox(height: 10),
          Text('Horario de Atención', style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(height: 10),
          Row(
          children: <Widget>[
            Icon(
                Icons.schedule,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 23,
              ),
                Text(
                  '  Lun - Vier: 09:00 hrs - 17:00 hrs',
                  style: TextStyle(color: Colors.white, fontSize: 15,
                  ),
              ),
              ],
            ),
            Row(
          children: <Widget>[
            Icon(
                Icons.schedule,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 23,
              ),
                Text(
                  '  Sáb - Dom: Cerrado',
                  style: TextStyle(color: Colors.white, fontSize: 15,
                  ),
              ),
              ],
            ),
        ],
      ),
    );
  }
}

//QR
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        
                width: 225,
                height: 250,
                child: Image.asset('assets/Resource/Img/qr.jpg', fit: BoxFit.cover), // Espacio para imagen del logo
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