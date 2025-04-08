import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/main.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/administracion.dart';


void main() => runApp(IngenieriaBiotecnologia());

class IngenieriaBiotecnologia extends StatelessWidget {
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
              ContentSection(),
              ObjectiveSection(),
              EntryProfileSection(),
              GraduateProfileSection(),
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
              GestureDetector(
  onTap: () {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
      (route) => false,
    );
  },
  child: Image.asset(
    'assets/Resource/Img/NuevoLogoUPQROO-PNGOFICIAL-1024x410.png',
    height: 60,
  ),
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

class ContentSection extends StatelessWidget {
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
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'La ingeniería en biotecnología está orientada a diseñar y mejorar procesos tecnológicos basados en sistemas vivos. La Biotecnología permite aislar y manipular biomoléculas y microorganismos mediante el uso de técnicas de biología molecular, microbiología y bioquímica con el objeto de producir nuevos medicamentos, procesos, alimentos, y plantas.',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/Resource/Img/Biotecnologia.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ObjectiveSection extends StatelessWidget {
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
            '¿Te interesa?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.task_alt, color: Colors.orange, size: 24),
              SizedBox(width: 8),
              Text(
                'Objetivo',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Analizar, diseñar, evaluar, innovar y supervisar sistemas biológicos, fisicoquímicos, y tecnológicos para el control, producción, cumplimiento de normativas vigentes y solución de requerimientos ambientales, industriales, científicos y salud, aplicables al sector público y privado para elevar la competitividad bajo los estándares de calidad.',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class EntryProfileSection extends StatelessWidget {
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
          Row(
            children: [
              Icon(Icons.co_present, color: Colors.orange, size: 24),
              SizedBox(width: 8),
              Text(
                'Perfil de Ingreso',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Para ingresar a la carrera de Ingeniería en Biotecnología se requiere: Haber concluido los estudios de bachillerato preferentemente en área físico-matemática o químico-biológica. Presentar y ser aceptado en el examen de ingreso. Los demás que marque la convocatoria de ingreso. Conocimientos previos de biología, química orgánica, matemáticas, física, inglés y computación.',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class GraduateProfileSection extends StatelessWidget {
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
          Row(
            children: [
              Icon(Icons.school, color: Colors.orange, size: 24),
              SizedBox(width: 8),
              Text(
                'Perfil de Egreso',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Valorar los bioprocesos, a través del análisis e interpretación de parámetros e indicadores de calidad, técnicas de laboratorio escala ensayo, metodologías pertinentes, normatividad y legislación vigentes, para contribuir al desarrollo de los bioproductos y fortalecer la aplicación de la biotecnología a nivel regional y nacional.',
            style: TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class HighlightSection extends StatelessWidget {
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
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '"Formar profesionales éticos y con valores en el área de Ingeniería en Biotecnología apegados al modelo basado en competencias capaces de proponer soluciones a las problemáticas actuales con una sólida formación científica, tecnológica e innovación."',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/Resource/Img/biotec-8.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
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