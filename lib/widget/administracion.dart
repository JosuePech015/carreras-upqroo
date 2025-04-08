import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vistas/main.dart';
import 'package:vistas/widget/terapia.dart';
import 'package:vistas/widget/software.dart';
import 'package:vistas/widget/financiera.dart';
import 'package:vistas/widget/biomedica.dart';
import 'package:vistas/widget/biotecnologia.dart';

void main() => runApp(Administracion());

class Administracion extends StatelessWidget {
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
                  'Licenciatura en Administración',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)],
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'En la Licenciatura en Administración y Gestión Empresarial se formarán profesionistas altamente competitivos, que respondan a los desafíos a los que se enfrentan las empresas, dirigiendo eficazmente los recursos y funciones, así como diseñando, evaluando y aplicando estrategias que permitan cumplir los objetivos y metas establecidas en las organizaciones.',
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
                  image: AssetImage('assets/Resource/Img/Administracion.png'),
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
            'Esta Licenciatura tiene como objetivo formar profesionistas con capacidades analíticas y gerenciales que le permitan proyectar una sólida visión de negocios en ambientes de incertidumbre y de competitividad internacional aplicando e innovando técnicas administrativas en las diferentes áreas de las organizaciones.',
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
            'El aspirante a la carrera de Licenciatura Administración y Gestión Empresarial, deberá cumplir con las siguientes características: Habilidades matemáticas y razonamiento lógico Conocimientos básicos en el área de administración Conocimientos básicos en el área contable Capacidad organizativa Responsabilidad Liderazgo Capacidad emprendedora.',
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
            'El egresado será competente para: ejercer las funciones de consultoría en las empresas, proponer alternativas que permitan el desarrollo óptimo de las organizaciones, privilegiando las tecnologías de información aplicadas en el comercio y los negocios, mediante el manejo de manera circunstancial de las emociones en pro del desarrollo organizacional y crecimiento personal, con la búsqueda de soluciones mediante el trabajo en equipo y toma de decisiones',
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
              '"Desarrollar al máximo las destrezas y habilidades de comunicación para el crecimiento empresarial."',
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
                  image: AssetImage('assets/Resource/Img/administracion.jpg'),
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