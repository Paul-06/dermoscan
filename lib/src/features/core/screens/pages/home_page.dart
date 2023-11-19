import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/features/authentication/models/user_model.dart';
import 'package:dermoscan/src/features/core/controllers/profile_controller.dart';
import 'package:dermoscan/src/features/core/screens/home/pick_image.dart';
import 'package:dermoscan/src/features/core/screens/pages/category_card.dart';
import 'package:dermoscan/src/features/core/screens/pages/info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var backgroundColor = isDark ? caribbean400 : dPrimaryColor;
    var border = isDark ? caribbean300 : caribbean700;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 160),
                  Text(
                    'Bienvenid@',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  // const SizedBox(height: 5.0), // Espacio entre los textos
                  Text(
                    "Mayu",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 15),
                  // Cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // color: backgroundColor, // Puedes cambiar el color
                        border: Border.all(
                          color: border,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/target.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '¿Cómo te sientes?',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'En DermoScan podemos ayudarte.',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 12),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("Empecemos"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Agrega un botón debajo de la tarjeta
                  const SizedBox(height: 20),
                  Container(
                    width: double
                        .infinity, // Para que el botón se expanda en ancho
                    margin: const EdgeInsets.symmetric(
                        horizontal:
                            25), // Ajusta el margen según tus necesidades
                    child: OutlinedButton(
                      onPressed: () => Get.to(() => const InfoPage()),
                      child: Text("Conoce sobre nuestras enfermedades."),
                    ),
                  ),
                  //iconos
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryCards(
                          label: 'Acné',
                          categoryCards: 'assets/icons/acne.png'),
                      CategoryCards(
                          label: 'Eczema',
                          categoryCards: 'assets/icons/eczema.png'),
                      CategoryCards(
                          label: 'Melanoma',
                          categoryCards: 'assets/icons/melanoma.png'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryCards(
                          label: 'Psoriasis',
                          categoryCards: 'assets/icons/psoriasis.png'),
                      CategoryCards(
                          label: 'Queratosis',
                          categoryCards: 'assets/icons/queratosis.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            // Figura triangular
            child: ClipPath(
              clipper: RPSCustomPainter(_scrollController),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: backgroundColor, // Color del ClipPath
                // Agrega el resto de tus widgets encima del fondo aquí
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.width * 0.5 - 50,
            // Avatar
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Center(
                child: Image.asset(
                  'assets/images/piel.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ClipPath (Forma triangular)
class RPSCustomPainter extends CustomClipper<Path> {
  final ScrollController scrollController;
  RPSCustomPainter(this.scrollController);

  @override
  Path getClip(Size size) {
    Path path = Path();

    double offset = scrollController.hasClients ? scrollController.offset : 0.0;

    // Duplicamos la mitad izquierda de la figura
    path.moveTo(size.width * -0.011, size.height * -0.003 + offset);
    path.lineTo(size.width * -0.014, size.height * 0.25 + offset);
    path.lineTo(size.width * 0.5, size.height * 0.15 + offset);

    // Reflejamos la figura sobre el eje y
    path.lineTo(size.width * 1.014, size.height * 0.25 + offset);
    path.lineTo(size.width * 1.011, size.height * -0.003 + offset);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
