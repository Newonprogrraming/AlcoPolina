import 'package:alkometrforpolina/constants.dart';
import 'package:alkometrforpolina/pages/inputpage.dart';
import 'package:flutter/material.dart';

class HistoryLayout extends StatelessWidget {
  const HistoryLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthorIdeaPage(),
      theme: ThemeData.dark(),
    );
  }
}

class AuthorIdeaPage extends StatefulWidget {
  const AuthorIdeaPage({Key? key}) : super(key: key);

  @override
  State<AuthorIdeaPage> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<AuthorIdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Авторы",
            style: kTextStyleWhite,
            textAlign: TextAlign.center,
          ),
          backgroundColor: kBackGraundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Автор идеи:",
              textAlign: TextAlign.center,
              style: kTextStyleWhite,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/image/imagepast.jpg')),
            Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/image/imagefuture.jpg')),
            const Text(
              "Программист/фотошоп:",
              textAlign: TextAlign.center,
              style: kTextStyleWhite,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/image/relize.jpg'))
          ],
        ));
  }
}
