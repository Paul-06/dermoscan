import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MelanomaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: const Text("Melanoma "),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "El tipo más grave de cáncer de piel.\n"
                "El melanoma ocurre cuando las células productoras de pigmento que dan color a la piel se vuelven cancerosas.\n"
                "Los síntomas incluyen neoplasias inusuales y nuevas, o cambios en un lunar ya existente. Los melanomas pueden aparecer en cualquier lugar del cuerpo.\n"
                "El tratamiento puede incluir cirugía, radioterapia, medicamentos y, en algunos casos, quimioterapia.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Causas:\n"
                "El melanoma ocurre cuando hay algún problema con las células productoras de melanina (melanocitos) que dan color a la piel.\n"
                "Normalmente, las células de la piel se desarrollan de una manera controlada y ordenada; las nuevas células sanas empujan las células más antiguas hacia la superficie de la piel, donde mueren y finalmente se caen. Pero cuando algunas células desarrollan daños del ADN, las células nuevas pueden comenzar a crecer fuera de control y con el tiempo pueden formar un tumor de células cancerosas.\n"
                "Lo que daña el ADN en las células de la piel y cómo esto produce un melanoma no está claro. Es probable que una combinación de factores, entre ellos factores ambientales y genéticos, produzca el melanoma. Sin embargo, los médicos creen que la exposición a la radiación ultravioleta del sol y de las lámparas y camas de bronceado es la principal causa del melanoma.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Síntomas:\n"
                "Los melanomas también pueden producirse en las partes que no tienen mucha exposición solar, como las plantas de los pies, las palmas de las manos y los lechos de las uñas. Estos melanomas ocultos son más frecuentes en personas que tiene la piel más oscura.\n"
                "Los primeros signos y síntomas del melanoma suelen ser:\n"
                "Un cambio en un lunar existente\n"
                "La formación de un nuevo bulto pigmentado o de aspecto inusual en la piel\n"
                "El melanoma no siempre comienza como un lunar. También puede aparecer en la piel de aspecto normal.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Precauciones:\n"
                "Actuando de forma responsable y tomando medidas de protección podemos prevenir o reducir el riesgo de tener un melanoma. Como norma, debemos:\n"
                "Evitar exposición prolongada al sol durante las horas centrales del día\n"
                "Usar fotoprotectores físicos (gafas de sol, gorra, camiseta,..) y químicos (crema solar con factor de protección alto)\n"
                "Estas medidas resultan especialmente importantes en personas con piel clara y en los niños, puesto que las quemaduras solares que se producen durante la infancia son uno de los mayores factores de riesgo para que aparezca un melanoma en edad adulta.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Tratamiento:\n"
                "El tipo de tratamiento (o tratamientos) que su medicó recomiende dependerá de la etapa y la localización del melanoma. Sin embargo, otros factores también pueden ser importantes, como el riesgo de que el cáncer regrese después del tratamiento, si las células cancerosas tienen ciertos cambios genéticos y su salud en general.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
