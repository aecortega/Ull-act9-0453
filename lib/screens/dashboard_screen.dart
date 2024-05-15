import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xffe60000),
        child: Icon(
          Icons.qr_code_2_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          tapBar(),
          location(),
          const Gap(20),
          searchBar(),
          const Gap(20),
          categories(),
          const Gap(20),
          cardsView()
        ]),
      ),
    );
  }

  Widget tapBar() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset("assets/images/profile.jpg"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffff6f6f)),
            ),
            Text(
              "Cisneros",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffe60000)),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffe60000),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 24,
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffe60000),
          size: 16,
        ),
        Gap(6),
        Text(
          "Cd.Juárez, Chihuahua",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xffff6f6f)),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffffd2d2),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffe60000),
          ),
          suffixIcon: Icon(
            Icons.filter_alt,
            color: Color(0xffe60000),
          ),
          suffixIconConstraints: const BoxConstraints(maxHeight: 20),
          prefixIconConstraints: const BoxConstraints(maxHeight: 24),
          border: InputBorder.none,
          fillColor: const Color(0xffffd2d2),
          filled: true,
          hintText: "¿Buscas algo?",
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xffe60000)),
        ),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tendencias 2024",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Gap(20),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xffe60000)),
                child: const Center(
                    child: Text("Todos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xffe60000), width: 1.5),
                ),
                child: const Center(
                    child: Text("2024",
                        style: TextStyle(
                            color: Color(0xffe60000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xffe60000), width: 1.5),
                ),
                child: const Center(
                    child: Text("2023",
                        style: TextStyle(
                            color: Color(0xffe60000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xffe60000), width: 1.5),
                ),
                child: const Center(
                    child: Text("Reflex",
                        style: TextStyle(
                            color: Color(0xffe60000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xffe60000), width: 1.5),
                ),
                child: const Center(
                    child: Text("Popsible",
                        style: TextStyle(
                            color: Color(0xffe60000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.71,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xffffc1c1), // Color de fondo claro (rojo claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/tommy.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Sudadera Tommy",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$850",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xffececec), // Color de fondo claro (gris claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/adidas.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Pantalon Adidas",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$750",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xffadd8e6), // Color de fondo claro (gris claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/billa.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Sudadera Billa Bong",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$1050",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xffffff00), // Color de fondo claro (gris claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ECKO.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Pantalon ECKO Unltd",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$1250",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xffffc0cb), // Color de fondo claro (gris claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/fubu.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Playera FUBU",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$350",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  const Color(0xff90ee90), // Color de fondo claro (gris claro)
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(
                        0xffe60000), // Color de fondo oscuro (rojo oscuro)
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/JNCO.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Short JNCO",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(
                                    0xffe60000), // Color de texto oscuro (rojo oscuro)
                              ),
                            ),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(
                                    0xffe60000), // Color de fondo oscuro (rojo oscuro)
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "\$350",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Color(
                              0xffe60000), // Color de fondo oscuro (rojo oscuro)
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
