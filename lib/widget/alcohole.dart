import 'package:flutter/material.dart';
import 'package:alkometrforpolina/constants.dart';

double sortedtype = 0.05;

class AlcoholeName extends StatefulWidget {
  const AlcoholeName({
    Key? key,
  }) : super(key: key);

  @override
  State<AlcoholeName> createState() => _AlcoholeNameState();
}

class _AlcoholeNameState extends State<AlcoholeName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        isExpanded: true,
        dropdownColor: kBackGraundColor,
        value: sortedtype.toString(),
        items: const [
          DropdownMenuItem(
            value: '0.05',
            child: Text(
              'Пиво',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '0.4',
            child: Text(
              'Водка',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '0.45',
            child: Text(
              'Джин',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
          DropdownMenuItem(
            value: '0.14',
            child: Text(
              'Вино',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: kTextStyleWhite,
            ),
          ),
        ],
        onChanged: (v) {
          setState(() {
            sortedtype = double.parse(v!);
            // ignore: avoid_print
            print(sortedtype);
          });
        },
      )),
    );
  }
}
