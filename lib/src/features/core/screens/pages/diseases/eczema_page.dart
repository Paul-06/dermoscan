import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EczemaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String Description =
        "El eczema, también conocido como dermatitis, es una afección inflamatoria de la piel que se caracteriza por la presencia de parches rojos, secos y con comezón. Puede afectar a personas de todas las edades y se manifiesta de diversas formas, desde pequeñas ampollas hasta áreas extensas de piel escamosa y agrietada.";
    String sub1 = "Causas";
    String sub2 = "Síntomas";
    String sub3 = "Precauciones";
    String sub4 = "Tratamiento";
    String causas =
        "Las causas exactas del eczema no son completamente comprendidas, pero se cree que es el resultado de una combinación de factores genéticos y ambientales. Se ha observado que las personas con antecedentes familiares de condiciones alérgicas o asma tienen un mayor riesgo de desarrollar eczema. Los desencadenantes ambientales incluyen irritantes como detergentes fuertes, contacto con alérgenos, cambios climáticos, estrés emocional y ciertos alimentos.";
    String sintomas =
        "Los síntomas del eczema pueden variar, pero comúnmente incluyen:\n\n"
        "1. Piel roja e inflamada.\n"
        "2. Sequedad y descamación de la piel.\n"
        "3. Comezón intensa.\n"
        "4. Formación de ampollas o costras.\n"
        "5. Engrosamiento de la piel con el tiempo.";
    String precauciones =
        "Para manejar y prevenir brotes de eczema, se recomiendan las siguientes precauciones:\n\n"
        "1. Hidratación constante: Mantener la piel bien hidratada con cremas o ungüentos.\n"
        "2. Evitar irritantes: Evitar detergentes fuertes, productos químicos agresivos y telas ásperas.\n"
        "3. Controlar alérgenos: Identificar y evitar posibles alérgenos que puedan desencadenar el eczema.\n"
        "4. Climatización adecuada: Proteger la piel contra temperaturas extremas y cambios climáticos.";
    String tratamiento =
        "El tratamiento del eczema puede implicar una combinación de enfoques, y puede incluir:\n\n"
        "1. Cuidado tópico: Aplicar cremas o ungüentos para aliviar la inflamación y la comezón.\n"
        "2. Antihistamínicos: Para controlar la picazón y mejorar la calidad del sueño.\n"
        "3. Corticosteroides: En casos más graves, se pueden recetar corticosteroides tópicos o sistémicos.\n"
        "4. Inmunomoduladores tópicos: Ayudan a controlar la inflamación.";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Eczema",
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
