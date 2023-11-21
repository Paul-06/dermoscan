import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'diseases/acne_page.dart';
import 'diseases/alopecia_page.dart';
import 'diseases/herpes_page.dart';
import 'diseases/melanoma_page.dart';
import 'diseases/psoriasis_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dInfo,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          _buildInfoCard(
              "Melanoma", 'assets/images/melanoma.jpg', MelanomaPage()),
          _buildInfoCard("Acné", 'assets/images/acne.jpg', AcnePage()),
          _buildInfoCard(
              "Psoriasis", 'assets/images/psoriasis.jpg', PsoriasisPage()),
          _buildInfoCard("Eczema", 'assets/images/eczema.jpg', HerpesPage()),
          _buildInfoCard(
              "Queratosis", 'assets/images/queratosis.jpg', AlopeciaPage()),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String title, String imagePath, Widget page) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: SizedBox(
        height: 100, // Ajusta la altura según tus necesidades
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
              child: Image.asset(
                imagePath,
                width: 100,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16),
                ),
                // Add more details or actions if needed
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: 33, // Ajusta el ancho según tus necesidades
                child: FloatingActionButton(
                  onPressed: () => Get.to(() => page),
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  // Gris más claro
                  mini: true,
                  // Hace que el botón sea más pequeño
                  child: const Icon(
                    LineAwesomeIcons.angle_right,
                    size: 20,
                    color: Colors.grey, // Color más oscuro para la flecha
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
