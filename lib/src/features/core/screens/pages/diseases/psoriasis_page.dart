import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PsoriasisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String Description =
        "La psoriasis es una enfermedad crónica de la piel que se caracteriza por la formación de placas rojas y escamosas en la piel. Es una afección autoinmune, lo que significa que el sistema inmunológico ataca por error las células sanas de la piel, acelerando el ciclo de crecimiento celular.";
    String sub1 = "Causas";
    String sub2 = "Síntomas";
    String sub3 = "Precauciones";
    String sub4 = "Tratamiento";
    String causas =
        "La causa exacta de la psoriasis no se comprende completamente, pero se cree que involucra una combinación de factores genéticos y ambientales. La activación del sistema inmunológico desempeña un papel clave en el desarrollo de esta enfermedad.";
    String sintomas =
        "Los síntomas de la psoriasis pueden variar en severidad y pueden incluir:\n\n"
        "1. Placas cutáneas: Lesiones rojas y elevadas cubiertas por escamas plateadas.\n"
        "2. Picazón y dolor: La piel afectada puede ser pruriginosa y dolorosa.\n"
        "3. Uñas engrosadas o con hoyuelos: La psoriasis puede afectar las uñas, causando cambios en su apariencia.\n"
        "4. Articulaciones inflamadas: En algunos casos, la psoriasis puede ir acompañada de artritis psoriásica, afectando las articulaciones.";
    String precauciones =
        "Aunque no se puede prevenir completamente la psoriasis, se pueden seguir algunas precauciones para reducir el riesgo de brotes y mejorar la calidad de vida:\n\n"
        "1. Cuidado de la piel: Mantener la piel bien hidratada y utilizar productos suaves para la piel.\n"
        "2. Exposición controlada al sol: La exposición moderada al sol puede ayudar, pero es importante evitar quemaduras solares.\n"
        "3. Usar fotoprotectores físicos (gafas de sol, gorra, camiseta,..) y químicos (crema solar con factor de protección alto)\n"
        "4. Manejo del estrés: Prácticas como el ejercicio regular y la meditación pueden ayudar a reducir el estrés, que a menudo puede desencadenar brotes de psoriasis.";
    String tratamiento =
        "El tratamiento de la psoriasis varía según la gravedad de los síntomas. Algunas opciones incluyen:\n\n"
        "1. Cremas y ungüentos tópicos: Para reducir la inflamación y la descamación.\n"
        "2. Medicamentos orales o inyectables: Para casos más graves o resistentes.\n"
        "3. Tratamientos biológicos: Medicamentos que afectan al sistema inmunológico.";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Psoriasis",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Description,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                sub1,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                causas,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16), // estilos para parrafos
              ),
              const SizedBox(height: 20),
              Text(
                sub2,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                sintomas,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16), // estilos para parrafos
              ),
              const SizedBox(height: 20),
              Text(
                sub3,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                precauciones,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16), // estilos para parrafos
              ),
              const SizedBox(height: 20),
              Text(
                sub4,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                tratamiento,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 16), // estilos para parrafos
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
