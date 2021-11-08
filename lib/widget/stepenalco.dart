import 'package:flutter/material.dart';
import 'package:alkometrforpolina/constants.dart';

double stypeaclo = 1.65;

class StepenAlco extends StatefulWidget {
  const StepenAlco({
    Key? key,
  }) : super(key: key);

  @override
  State<StepenAlco> createState() => _StepenAlcoState();
}

class _StepenAlcoState extends State<StepenAlco> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        isExpanded: true,
        dropdownColor: kBackGraundColor,
        value: stypeaclo.toString(),
        items: const [
          DropdownMenuItem(
            value: '1.65',
            child: Text(
              'Средняя',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '1.1',
            child: Text(
              'Слабая',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '2.04',
            child: Text(
              'Сильная',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '2.5',
            child: Text(
              'Очень сильная',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
        ],
        onChanged: (v) {
          setState(() {
            stypeaclo = double.parse(v!);
            // ignore: avoid_print
            print(stypeaclo);
          });
        },
      )),
    );
  }
}
