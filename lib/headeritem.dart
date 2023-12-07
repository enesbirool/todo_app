import "package:flutter/material.dart";

class HeaderItem extends StatelessWidget {
  const HeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;
    return Container(
      width: devicewidth,
      height: deviceHeight / 5,
      decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              image: AssetImage('lib/assets/images/header.png'),
              fit: BoxFit.cover)),
      child: const Column(children: [
        Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              '05/12/2023',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
        Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Team For Todo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ))
      ]),
    );
  }
}
