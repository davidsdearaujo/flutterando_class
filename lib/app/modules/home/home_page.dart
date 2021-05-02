import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:flutterando_class/app/components/book_widget.dart';
import 'package:flutterando_class/app/components/button_widget.dart';
import 'package:flutterando_class/app/components/playlist_widget.dart';
import 'package:flutterando_class/app/components/section_header_widget.dart';
import 'package:flutterando_class/app/components/trail_widget.dart';
import 'package:flutterando_class/app/components/video_card_widget.dart';

import '../../core/constants/colors.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/img/ftJacob.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width,
                ),
                Positioned.fill(
                  bottom: -2,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54, Colors.black],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Jacob Moura", style: Theme.of(context).textTheme.headline1),
                      Text("Um novo modelo de", style: Theme.of(context).textTheme.bodyText1),
                      Text("Comunidade", style: Theme.of(context).textTheme.bodyText1),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonWidget(icon: Icons.play_arrow, text: "assistir"),
                          SizedBox(width: 9),
                          ButtonWidget(
                            icon: Icons.add,
                            text: "detalhes",
                            color: Colors.transparent,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 26),
                    ],
                  ),
                ),
                Positioned(
                  top: 39,
                  right: 32,
                  child: Image.asset(
                    "assets/img/icons/flagBr.png",
                    filterQuality: FilterQuality.medium,
                    width: 25,
                    height: 25,
                  ),
                ),
                Positioned(
                  top: 39,
                  left: 32,
                  child: Image.asset(
                    "assets/img/logo/logo_white.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 50),
              child: Text(
                "Continue de onde parou",
                style: Theme.of(context).textTheme.headline3?.copyWith(color: AppColors.subtitle),
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  VideoCardWidget(
                    provider: NetworkImage("https://coudz.s3.amazonaws.com/imagem/video/ce0cbd9fcf5ca44c0a638a315b8af750.jpg"),
                    title: 'Gerência de Estado',
                    channelName: 'Flutterando',
                  ),
                  SizedBox(width: 5),
                  VideoCardWidget(
                    provider: NetworkImage("https://i.ytimg.com/vi/XCsDC2FsM-E/maxresdefault.jpg"),
                    title: 'Fábio Akita',
                    channelName: 'Akitando',
                  ),
                ],
              ),
            ),
            SectionHeaderWidget(title: "vídeos"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  Image.network(
                    "https://i.ytimg.com/vi/XtrEq55EFC4/mqdefault.jpg",
                    width: 150,
                    height: 112.5,
                  ),
                  SizedBox(width: 12),
                  Image.network(
                    "https://i.ytimg.com/vi/KHQdK_C7RXM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBnPBde1pt0_b3efuKP-I6ZBwnf2A",
                    width: 150,
                    height: 112.5,
                  ),
                  SizedBox(width: 12),
                  Image.network(
                    "https://pbs.twimg.com/media/EnCGV4PW4AIlnjr.jpg",
                    width: 150,
                    height: 112.5,
                  ),
                ],
              ),
            ),
            SectionHeaderWidget(title: "playlists", icon: AssetImage("assets/img/icons/play.png")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
              child: Row(
                children: [
                  PlaylistWidget(title: "A História do Dinheiro", channelName: "Yuval Noah Hararl"),
                  PlaylistWidget(title: "A História do Dinheiro", channelName: "Yuval Noah Hararl"),
                  PlaylistWidget(title: "A História do Dinheiro", channelName: "Yuval Noah Hararl"),
                ],
              ),
            ),
            SectionHeaderWidget(title: "books", icon: AssetImage("assets/img/icons/stop.png")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
              child: Row(
                children: [
                  BookWidget(
                    image: AssetImage("assets/img/books/flutter_na_pratica.png"),
                    title: '“Flutter na Prática”',
                    subtitle: "Frank Zammetti - 2020",
                  ),
                  BookWidget(
                    image: AssetImage("assets/img/books/dart.png"),
                    title: "“Dart - October 1, 2020”",
                    subtitle: "Reder Glauber Gad Weyers - 2020",
                  ),
                  BookWidget(
                    image: AssetImage("assets/img/books/codigo_limpo.png"),
                    title: "“Código Limpo” - Habilidades Práticas...",
                    subtitle: "Robert C. Martin - 2020",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, top: 40),
              child: Text(
                "Trilhas de conhecimento",
                style: Theme.of(context).textTheme.headline3?.copyWith(color: AppColors.subtitle, fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
              child: Row(
                children: [
                  TrailWidget(title: "Iniciante"),
                  TrailWidget(title: "Semana Modular"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
