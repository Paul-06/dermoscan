import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AlopeciaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Alopecia"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "La alopecia es un término general que se refiere a la pérdida de cabello en cualquier parte del cuerpo, pero comúnmente se asocia con la pérdida de cabello en el cuero cabelludo. Puede afectar tanto a hombres como a mujeres y puede tener diversas causas y manifestaciones.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Causas:\n"
                "Las causas de la alopecia pueden ser variadas e incluir:\n"
                "1. Genética: La predisposición genética juega un papel importante en muchos casos de alopecia, como en la alopecia androgenética (calvicie común).\n"
                "2. Hormonal: Cambios hormonales, como los asociados con el embarazo, el parto, la menopausia y condiciones como el síndrome de ovario poliquístico, pueden desencadenar la pérdida de cabello.\n"
                "3. Enfermedades médicas: Problemas de salud como la tiroides, la diabetes y la alopecia areata (una enfermedad autoinmune) pueden contribuir a la alopecia.\n"
                "4.Factores ambientales y estilo de vida: Estrés, dietas deficientes, y ciertos medicamentos pueden desencadenar la pérdida de cabello.\n"
                "5. Tratamientos médicos: La radioterapia y la quimioterapia, utilizadas en el tratamiento del cáncer, a menudo causan pérdida temporal de cabello.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Síntomas:\n"
                "Los síntomas de la alopecia pueden variar según la causa, pero comúnmente incluyen:\n"
                "1. Pérdida de cabello: Puede ocurrir de manera gradual o repentina, afectando diferentes áreas del cuero cabelludo.\n"
                "2. Afinamiento del cabello: El cabello puede volverse más delgado y frágil.\n"
                "3.Parches calvos: En casos de alopecia areata, pueden formarse áreas circulares sin cabello.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Precauciones:\n"
                "Si bien algunas formas de alopecia no se pueden prevenir, se pueden seguir ciertas precauciones para mantener la salud del cabello:\n"
                "1. Dieta balanceada: Consumir una dieta rica en nutrientes esenciales para la salud del cabello.\n"
                "2. Manejo del estrés: Practicar técnicas de manejo del estrés, ya que el estrés puede contribuir a la pérdida de cabello.\n"
                "3. Cuidado del cabello suave: Evitar tratamientos agresivos, como peinados apretados y productos químicos fuertes.\n",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Tratamiento:\n"
                "1. Medicamentos: Minoxidil y finasterida son medicamentos aprobados para el tratamiento de la alopecia androgenética.\n"
                "2. Cirugía: El trasplante de cabello es una opción para algunas personas con calvicie permanente.\n"
                "3. Terapias: La terapia de luz láser y la terapia con corticosteroides son opciones para ciertos tipos de alopecia.\n"
                "4. Tratamiento de condiciones médicas subyacentes: Abordar problemas de salud como desequilibrios hormonales o enfermedades autoinmunes puede ayudar a frenar la pérdida de cabello.\n",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
