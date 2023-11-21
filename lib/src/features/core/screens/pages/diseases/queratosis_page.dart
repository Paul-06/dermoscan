import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class QueratosisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String Description =
        "El eczema, también conocido como dermatitis, es una afección inflamatoria de la piel que se caracteriza por la presencia de parches rojos, secos y con comezón. Puede afectar a personas de todas las edades y se manifiesta de diversas formas, desde pequeñas ampollas hasta áreas extensas de piel escamosa y agrietada.";
    String sub1 = "Causas";
    String sub2 = "Síntomas";
    String sub3 = "Precauciones";
    String sub4 = "Tratamiento";
    String causas =
        "La queratosis es una condición cutánea caracterizada por el engrosamiento de la capa externa de la piel debido a la acumulación de queratina. Puede presentarse de diversas formas, como protuberancias ásperas, parches escamosos o áreas engrosadas.";
    String sintomas =
        "Los síntomas del eczema pueden variar, pero comúnmente incluyen:\n\n"
        "1. Protuberancias ásperas: En el caso de la queratosis pilaris, se pueden observar pequeñas protuberancias ásperas en la piel, a menudo del tamaño de un grano de arena.\n"
        "2. Piel engrosada: La piel afectada puede sentirse más gruesa y tener una textura áspera.\n"
        "3. Enrojecimiento: Algunas formas de queratosis pueden ir acompañadas de enrojecimiento en las áreas afectadas.\n";
    String precauciones =
        "Para manejar y prevenir brotes de eczema, se recomiendan las siguientes precauciones:\n\n"
        "1. Hidratación: Mantener la piel bien hidratada es importante para prevenir la sequedad y reducir la acumulación de queratina.\n"
        "2. Protección solar: Utilizar protector solar para proteger la piel de los efectos dañinos del sol, especialmente si se tiene predisposición a desarrollar queratosis actínica debido a la exposición solar excesiva.\n";
    String tratamiento =
        "El tratamiento del eczema puede implicar una combinación de enfoques, y puede incluir:\n\n"
        "1. Hidratación regular: Aplicar cremas hidratantes y emolientes para mantener la piel suave e hidratada.\n"
        "2. Exfoliación suave: Utilizar exfoliantes suaves para ayudar a eliminar las células de piel muerta y prevenir la acumulación de queratina.\n"
        "3. Tratamientos médicos: En casos más graves o persistentes, se pueden recetar medicamentos tópicos que contengan ácido láctico, ácido glicólico o retinoides para mejorar la textura de la piel.\n"
        "4. Terapia con láser: En algunos casos, se puede considerar la terapia con láser para reducir el enrojecimiento y mejorar la apariencia de la piel afectada.";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          "Queratosis",
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
