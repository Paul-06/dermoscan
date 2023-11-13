import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PsoriasisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Psoriasis"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "La psoriasis es una enfermedad crónica de la piel que se caracteriza por la formación de placas rojas y escamosas en la piel. Es una afección autoinmune, lo que significa que el sistema inmunológico ataca por error las células sanas de la piel, acelerando el ciclo de crecimiento celular.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Causas:\n"
                "La causa exacta de la psoriasis no se comprende completamente, pero se cree que involucra una combinación de factores genéticos y ambientales. La activación del sistema inmunológico desempeña un papel clave en el desarrollo de esta enfermedad.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Síntomas:\n"
                "Los síntomas de la psoriasis pueden variar en severidad y pueden incluir:\n"
                "1. Placas cutáneas: Lesiones rojas y elevadas cubiertas por escamas plateadas.\n"
                "2. Picazón y dolor: La piel afectada puede ser pruriginosa y dolorosa.\n"
                "3. Uñas engrosadas o con hoyuelos: La psoriasis puede afectar las uñas, causando cambios en su apariencia.\n"
                "4. Articulaciones inflamadas: En algunos casos, la psoriasis puede ir acompañada de artritis psoriásica, afectando las articulaciones.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Precauciones:\n"
                "Aunque no se puede prevenir completamente la psoriasis, se pueden seguir algunas precauciones para reducir el riesgo de brotes y mejorar la calidad de vida:\n"
                "Cuidado de la piel: Mantener la piel bien hidratada y utilizar productos suaves para la piel.\n"
                "Exposición controlada al sol: La exposición moderada al sol puede ayudar, pero es importante evitar quemaduras solares.\n"
                "Usar fotoprotectores físicos (gafas de sol, gorra, camiseta,..) y químicos (crema solar con factor de protección alto)\n"
                "Manejo del estrés: Prácticas como el ejercicio regular y la meditación pueden ayudar a reducir el estrés, que a menudo puede desencadenar brotes de psoriasis.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Tratamiento:\n"
                "El tratamiento de la psoriasis varía según la gravedad de los síntomas. Algunas opciones incluyen:\n"
                "Cremas y ungüentos tópicos: Para reducir la inflamación y la descamación.\n"
                "Medicamentos orales o inyectables: Para casos más graves o resistentes.\n"
                "Tratamientos biológicos: Medicamentos que afectan al sistema inmunológico.\n",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
