import 'package:alkometrforpolina/constants.dart';
import 'package:alkometrforpolina/pages/authoridea.dart';
import 'package:alkometrforpolina/widget/alcohole.dart';
import 'package:alkometrforpolina/widget/diaolod_widget.dart';
import 'package:alkometrforpolina/widget/reusable_card.dart';
import 'package:alkometrforpolina/widget/reusable_card_color.dart';
import 'package:alkometrforpolina/widget/stepenalco.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? gender;
  late double constalcosex;
  late int massa;
  late double result;
  late double resultzapivon;
  @override
  void initState() {
    massa = 60;
    constalcosex = 0.7;
    gender = Gender.male;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "AlcoPolina",
          style: kTextStyleWhite,
          textAlign: TextAlign.center,
        ),
        backgroundColor: kBackGraundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.favorite,
            color: kLableRed,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AuthorIdeaPage(),
              ),
            );
          },
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 5,
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                  child: ReusableCardColor(
                onTap: () {
                  setState(() {
                    gender = Gender.male;
                    constalcosex = 0.7;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Мужчина',
                      style: kTextStyleWhiteBig,
                    ),
                  ],
                ),
                color: gender == Gender.male ? kLableRed : kLableStyle,
              )),
              Expanded(
                  child: ReusableCardColor(
                onTap: () {
                  setState(() {
                    gender = Gender.female;
                    constalcosex = 0.6;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('Женщина', style: kTextStyleWhiteBig)],
                ),
                color: gender == Gender.female ? kLableRed : kLableStyle,
              ))
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: ReusableCard(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                    left: 10,
                  )),
                  const Text(
                    'ВЕС',
                    textAlign: TextAlign.center,
                    style: kTextStyleWhiteBig,
                  ),
                  Text(
                    massa.toString(),
                    textAlign: TextAlign.center,
                    style: kTextStyleWhiteVeryBig,
                  ),
                  Slider(
                      activeColor: kLableRed,
                      min: 40,
                      max: 150,
                      value: massa.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          massa = value.round();
                        });
                      })
                ],
              ),
            )),
        Expanded(
            child: ReusableCard(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Text(
                        'Вид алкоголя: ',
                        textAlign: TextAlign.center,
                        style: kTextStyleWhite,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: AlcoholeName(),
                    ),
                  ],
                ))),
        Expanded(
            child: ReusableCard(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 13,
              ),
              Expanded(
                child: Text(
                  'Cтепень опьянения',
                  textAlign: TextAlign.center,
                  style: kTextStyleWhite,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: StepenAlco(),
              ),
            ],
          ),
        )),
        Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: ElevatedButton(
                  onPressed: () {
                    result = ((constalcosex * massa * stypeaclo) /
                            (sortedtype * 0.8)) /
                        1000;
                    resultzapivon = 7 * result / 3;
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogWidget(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(padding: EdgeInsets.all(20)),
                                const Text(
                                  "Количество спиртного:",
                                  textAlign: TextAlign.center,
                                  style: kTextStyleWhiteBig,
                                ),
                                Text(
                                  result.toStringAsFixed(2) + " л",
                                  style: kStyleTextResult,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Запивона: " +
                                      resultzapivon.toStringAsFixed(2) +
                                      " л",
                                  textAlign: TextAlign.center,
                                  style: kTextStyleWhiteBig,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                FloatingActionButton.extended(
                                    backgroundColor: kLableRed,
                                    label: const Text(
                                      "OK",
                                      style: kTextStyleWhite,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    })
                              ],
                            ));
                          });
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kLableRed),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                              side: const BorderSide(color: kLableRed)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'РАССЧИТАТЬ',
                        style: kTextStyleWhite,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ))),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
