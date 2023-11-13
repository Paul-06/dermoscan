import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HerpesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Herpes"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "El herpes es una infección viral causada por los virus del herpes simple (VHS). Hay dos tipos.\n"
                "principales de virus del herpes simple: el VHS tipo 1 (VHS-1) y el VHS tipo 2 (VHS-2). El VHS-1 \n"
                "generalmente está asociado con el herpes labial, mientras que el VHS-2 se relaciona con el \n"
                "herpes genital. Sin embargo, ambos tipos pueden causar infecciones en diferentes partes del cuerpo.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Causas:\n"
                "El herpes se transmite principalmente a través del contacto directo con una persona infectada. Puede ocurrir mediante el contacto oral con lesiones de herpes labial o a través del contacto genital con lesiones de herpes genital. También es posible transmitir el virus incluso cuando no hay síntomas visibles.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Síntomas:\n"
                "Los síntomas del herpes varían según el tipo y la ubicación de la infección. Los signos comunes incluyen ampollas dolorosas, úlceras, picazón y malestar general. En el herpes labial, las ampollas generalmente aparecen alrededor de la boca, mientras que en el herpes genital, afectan los genitales y áreas circundantes.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Precauciones:\n"
                "1. Evitar contacto directo: Evitar el contacto directo con lesiones visibles de herpes y no compartir objetos personales como toallas o utensilios.\n"
                "2. Practicar sexo seguro: Utilizar condones o barreras dentales durante las relaciones sexuales para reducir el riesgo de transmisión genital.\n"
                "3. Buena higiene: Lavarse las manos con frecuencia, especialmente después de tocar áreas infectadas, puede ayudar a prevenir la propagación del virus.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Tratamiento:\n"
                "1. Antivirales: Medicamentos antivirales, como el aciclovir, valaciclovir o famciclovir, pueden ayudar a reducir la gravedad y la duración de los síntomas. Se administran oralmente o en forma de ungüento para aplicar localmente.\n"
                "2. Analgésicos y cremas tópicas: El uso de analgésicos y cremas tópicas puede aliviar el malestar y reducir la picazón asociada con las lesiones.\n"
                "3. Cuidado de las lesiones: Mantener las lesiones limpias y secas para prevenir infecciones secundarias y acelerar la curación..\n"
                "4. Inmunización: Actualmente no existe una vacuna para el herpes, pero la investigación está en curso para desarrollar opciones preventivas.\n",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
