import 'package:bonda3/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Column(
          children: [
            Text("Bonda 3"),
            CupertinoButton(
                child: const Text("Outra Música"),
                onPressed: () => {
                      homeController.trocaMusica(),
                    }),
            CupertinoButton(
              child: const Text("Play"),
              onPressed: homeController.tocaMusica,
            ),
            Form(
              child: Column(children: [
                CupertinoTextField(
                  placeholder: "Chuta ae Vagabundo",
                  controller: controller,
                ),
              ]),
            ),
            CupertinoButton(onPressed: homeController.verificaResposta, child: const Text("Será que acertou?"))
          ],
        ),
      ),
    );
  }
}
