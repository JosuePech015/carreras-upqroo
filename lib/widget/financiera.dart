import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void financiera() {
  runApp(IngenieriaFinanciera());
}

class IngenieriaFinanciera extends StatelessWidget {
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
                      '\n la Licenciatura en Terapia Física también conocida como fisioterapia, es una profesión dentro del área de salud aplicada a la rehabilitación, a través de medios físicos, ejercicio terapéutico, masoterapia y electroterapia. La terapia física para la rehabilitación integral ofrece oportunidades que permiten a las personas con alguna deficiencia desarrollar sus destrezas mejorando su interrelación con su entorno.',
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
                      '\nTener gusto por el área de la salud. Contar con espíritu de servicio para la atención de las necesidades de salud de la población. Tener la disposición para la investigación y resolución de problemas. Contar con el interés para incrementar sus habilidades humanísticas.',
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
                      '\n El Licenciado en Terapia Física colabora con el equipo interdisciplinario de salud en la elaboración de los planes de tratamiento rehabilitatorio integral, tanto en el individuo discapacitado como con el sujeto de riesgo, con la aplicación de técnicas generales y especificas de rehabilitación.',
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
          ElevatedButton(
            onPressed: () {},
            child: Text('Contact'),
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
                  'Licenciatura en Ingeniería Financiera',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'La Licenciatura en Terapia Física es una profesión dentro del área de salud y es entendida como la ciencia del movimiento aplicada a la rehabilitación. La terapia física brinda tratamiento a diferentes enfermedades de acuerdo a la evaluación previa de las habilidades y condiciones propias del paciente.',
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
                  '"Desarrollar al máximo las destrezas y habilidades de las personas con discapacidad y la interrelación del individuo con la familia y su entorno."',
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
                    'assets/Resource/Img/fisio1.jpg',
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
