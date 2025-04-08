import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';
import 'package:vistas/widget/biotecnologia.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              HeroSection(),
              HistorySection(),
              EducationSection(),
              TestimonialSection(),
              ContactSection(),
              QRSection(),
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
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.orange,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/Resource/Img/NuevoLogoUPQROO-PNGOFICIAL-1024x410.png',
                height: 60,
              ),
              SizedBox(width: 12),
              Text(
                'UPQROO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black45, offset: Offset(1, 1), blurRadius: 2)],
                ),
              ),
            ],
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.white, size: 28),
            onSelected: (value) => _navigateTo(context, value),
            itemBuilder: (context) => [
              PopupMenuItem(value: '1', child: Text('Licenciatura en Ingeniería Financiera')),
              PopupMenuItem(value: '2', child: Text('Licenciatura en Ingeniería Biomédica')),
              PopupMenuItem(value: '3', child: Text('Ingeniería en Tecnologia Informática')),
              PopupMenuItem(value: '4', child: Text('Ingeniería en Biotecnología')),
              PopupMenuItem(value: '5', child: Text('Licenciatura en Terapia Física')),
              PopupMenuItem(value: '6', child: Text('Licenciatura en Administración')),
            ],
          ),
        ],
      ),
    );
  }

  void _navigateTo(BuildContext context, String value) {
    final routes = {
      '1': () => IngenieriaFinanciera(),
      '2': () => IngenieriaBiomedica(),
      '3': () => IngenieriaSoftware(),
      '4': () => IngenieriaBiotecnologia(),
      '5': () => TerapiaFisica(),
      '6': () => Administracion(),
    };
    Navigator.push(context, MaterialPageRoute(builder: (context) => routes[value]!()));
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
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black54, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          'UNIVERSIDAD POLITÉCNICA DE QUINTANA ROO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(color: Colors.black87, offset: Offset(2, 2), blurRadius: 4)],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class HistorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TU UNIVERSIDAD',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.view_column, color: Colors.orange, size: 24),
              SizedBox(width: 8),
              Text(
                'Historia',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Fundada en el año 2010, la Universidad Politécnica de Quintana Roo, es una institución pública que imparte educación superior basada en competencias para preparar a profesionales con una sólida formación científica y un liderazgo tecnológico con base en valores que coadyuven al progreso económico y social del estado de Quintana Roo respetando el medio ambiente y la cultura.',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nuestra Universidad',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
            ),
          ),
          SizedBox(height: 8),
          Text(
            'La Universidad cuenta con instalaciones con tecnología de punta, desde laboratorios para microorganismos, hasta espacios para entrenamiento de terapia física. Los alumnos que integran este orgulloso instituto buscan no solo completar sus metas al perseguir sus sueños, buscan sobresalir en el mundo laboral como verdaderos profesionales con altos estándares en sus valores y competencias.',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class TestimonialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/Resource/Img/cancun2.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black54, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            '"Sean Bienvenidos estudiantes al primer paso de su futuro, Cancún Quintana Roo es uno de los destinos favoritos en el mundo por su gran atractivo turístico."\n\n- Laura Johnson',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontStyle: FontStyle.italic,
              shadows: [Shadow(color: Colors.black87, offset: Offset(1, 1), blurRadius: 3)],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contáctanos',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
            ),
          ),
          SizedBox(height: 12),
          _buildContactItem(Icons.room, 'Smza. 255, Mza. 11, Lote 1119-33 77500 Cancún, México', Colors.orange),
          _buildContactItem(Icons.call, '998 2831 859', Colors.orange),
          _buildContactItem(Icons.email, 'prensaydifusion@upqroo.edu.mx', Colors.orange),
          SizedBox(height: 12),
          Text(
            'Horario de Atención',
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          _buildContactItem(Icons.schedule, 'Lun - Vier: 09:00 hrs - 17:00 hrs', Colors.grey.shade700),
          _buildContactItem(Icons.schedule, 'Sáb - Dom: Cerrado', Colors.grey.shade700),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 24),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class QRSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            'assets/Resource/Img/qr.jpg',
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'UNIVERSIDAD POLITÉCNICA DE QUINTANA ROO',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook, color: Color(0xFF1877F2), size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.black, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter, color: Color(0xFF00435D), size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.black, size: 28),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Derechos Reservados UPQROO',
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ],
      ),
    );
  }
}