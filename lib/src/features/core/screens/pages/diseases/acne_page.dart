import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AcnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String Description =
        "El acné es una enfermedad cutánea común que afecta a las glándulas sebáceas, las cuales producen una sustancia aceitosa llamada sebo. El acné generalmente aparece durante la adolescencia, aunque también puede afectar a personas de otras edades. Se caracteriza por la presencia de granos, espinillas, quistes y puntos negros en la piel, especialmente en la cara, cuello, espalda, hombros y pecho.";
    String sub1 = "Causas";
    String sub2 = "Síntomas";
    String sub3 = "Precauciones";
    String sub4 = "Tratamiento";
    String causas =
        "El acné se desarrolla cuando los folículos pilosos se obstruyen con sebo y células cutáneas muertas. Esto puede deberse a una combinación de factores, como:\n\n"
        "1. Producción excesiva de sebo: Las glándulas sebáceas producen demasiado sebo, lo que puede obstruir los poros.\n"
        "2. Células cutáneas muertas: La acumulación de células muertas en la superficie de la piel puede contribuir a la obstrucción de los poros.\n"
        "3. Bacterias: La proliferación de la bacteria Propionibacterium acnes en los folículos obstruidos puede desencadenar inflamación.";
    String sintomas =
        "Los síntomas del acné varían en gravedad y pueden incluir:\n\n"
        "1. Espinillas: Pápulas y pústulas rojas y elevadas.\n"
        "2. Puntos negros: Poros obstruidos abiertos en la superficie de la piel.\n"
        "3. Nódulos y quistes: Inflamación profunda y dolorosa.\n";
    String precauciones =
        "Para prevenir el acné o evitar que empeore, se pueden seguir algunas precauciones:\n\n"
        "1. Mantener la piel limpia: Lavar la cara dos veces al día con un limpiador suave.\n"
        "2. Evitar la manipulación: No exprimir ni tocar las lesiones de acné para evitar la propagación de bacterias y la inflamación.\n"
        "3. Usar productos no comedogénicos: Optar por productos que no obstruyan los poros.";
    String tratamiento =
        "El tratamiento del acné puede implicar varios enfoques, dependiendo de la gravedad. Algunas opciones incluyen:\n\n"
        "1. Medicamentos tópicos: Cremas y geles que contienen ingredientes como peróxido de benzoilo, ácido salicílico o retinoides.\n"
        "2. Antibióticos: Para reducir la bacteria y la inflamación.\n"
        "3. Anticonceptivos orales: En mujeres, ciertos anticonceptivos pueden ayudar a regular las hormonas responsables del acné.\n"
        "4. Isotretinoína: Un medicamento oral más fuerte para casos graves de acné, pero con posibles efectos secundarios.\n";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Acné",
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
