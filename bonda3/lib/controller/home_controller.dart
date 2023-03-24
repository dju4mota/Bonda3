import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

class HomeController {
  static final HomeController _singleton = HomeController._internal();
  factory HomeController() {
    return _singleton;
  }
  HomeController._internal();

  late String input;
  final player = AudioPlayer();
  bool isPlaying = false;
  int tempo = 1;
  List<String> musicas = ["music/shadow4ever.mp4", "music/quebrandoBarreiras.mp4", "music/bocaNoBirimbas.mp4"];

  Map<String, String> musicasCorretas = {
    "music/shadow4ever.mp4": "shadow 4 ever",
    "music/quebrandoBarreiras.mp4": "quebrando barreiras",
    "music/bocaNoBirimbas.mp4": "boca no birimbas",
  };

  late String musicaAtual = musicas[Random().nextInt(musicas.length)];

  Timer scheduleTimeout([int milliseconds = 1000]) =>
      Timer(Duration(milliseconds: milliseconds), paraMusicaEIncrementa);

  tocaMusica() async {
    player.stop();
    isPlaying = true;
    print("tocando " + musicaAtual);
    print("tempo ");
    print(tempo);
    await player.play(AssetSource(musicaAtual));
    scheduleTimeout(tempo * 1000);
  }

  paraMusicaEIncrementa() async {
    await player.stop();
    isPlaying = false;
    if (tempo < 5) {
      tempo++;
    } else {
      tempo = 5;
    }
  }

  trocaMusica() {
    print("troca");
    musicaAtual = musicas[Random().nextInt(musicas.length)];
    tempo = 1;
  }

  verificaResposta() {}
}
