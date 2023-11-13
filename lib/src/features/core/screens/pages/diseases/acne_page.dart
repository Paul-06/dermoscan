import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AcnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Acné"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "El acné es una enfermedad cutánea común que afecta a las glándulas sebáceas, las cuales producen una sustancia aceitosa llamada sebo. El acné generalmente aparece durante la adolescencia, aunque también puede afectar a personas de otras edades. Se caracteriza por la presencia de granos, espinillas, quistes y puntos negros en la piel, especialmente en la cara, cuello, espalda, hombros y pecho.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Causas:\n"
                "El acné se desarrolla cuando los folículos pilosos se obstruyen con sebo y células cutáneas muertas. Esto puede deberse a una combinación de factores, como:\n"
                "1. Producción excesiva de sebo: Las glándulas sebáceas producen demasiado sebo, lo que puede obstruir los poros.\n"
                "2. Células cutáneas muertas: La acumulación de células muertas en la superficie de la piel puede contribuir a la obstrucción de los poros.\n"
                "3. Bacterias: La proliferación de la bacteria Propionibacterium acnes en los folículos obstruidos puede desencadenar inflamación.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Síntomas:\n"
                "Los síntomas del acné varían en gravedad y pueden incluir:\n"
                "1. Espinillas: Pápulas y pústulas rojas y elevadas.\n"
                "2. Puntos negros: Poros obstruidos abiertos en la superficie de la piel.\n"
                "3. Nódulos y quistes: Inflamación profunda y dolorosa.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Precauciones:\n"
                "Para prevenir el acné o evitar que empeore, se pueden seguir algunas precauciones:\n"
                "1. Mantener la piel limpia: Lavar la cara dos veces al día con un limpiador suave.\n"
                "2. Evitar la manipulación: No exprimir ni tocar las lesiones de acné para evitar la propagación de bacterias y la inflamación.\n"
                "3. Usar productos no comedogénicos: Optar por productos que no obstruyan los poros.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Tratamiento:\n"
                "El tratamiento del acné puede implicar varios enfoques, dependiendo de la gravedad. Algunas opciones incluyen:\n"
                "1. Medicamentos tópicos: Cremas y geles que contienen ingredientes como peróxido de benzoilo, ácido salicílico o retinoides.\n"
                "2. Antibióticos: Para reducir la bacteria y la inflamación.\n"
                "3. Anticonceptivos orales: En mujeres, ciertos anticonceptivos pueden ayudar a regular las hormonas responsables del acné.\n"
                "4. Isotretinoína: Un medicamento oral más fuerte para casos graves de acné, pero con posibles efectos secundarios.\n",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
