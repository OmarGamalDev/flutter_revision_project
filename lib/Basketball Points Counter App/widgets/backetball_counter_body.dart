import 'package:flutter/material.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/widgets/custom_button.dart';

class BacketballCounterBody extends StatefulWidget {
  const BacketballCounterBody({super.key});

  @override
  State<BacketballCounterBody> createState() => _BacketballCounterBodyState();
}

class _BacketballCounterBodyState extends State<BacketballCounterBody> {
  late int countTeamA;
  late int countTeamb;

  @override
  void initState() {
    super.initState();
    countTeamA = 0;
    countTeamb = 0;
  }

  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    double buttonHeight = 60;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(height: 19),
                Text(
                  "Team A",
                  style: TextStyle(color: Colors.black, fontSize: 34),
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$countTeamA',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black, fontSize: 180),
                    ),
                  ),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 1 Point',
                  onpressed:
                      () => setState(() {
                        countTeamA++;
                      }),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 2 Point',
                  onpressed:
                      () => setState(() {
                        countTeamA = countTeamA + 2;
                      }),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 3 Point',
                  onpressed:
                      () => setState(() {
                        countTeamA = countTeamA + 3;
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 600,
              child: VerticalDivider(
                color: Color.fromARGB(255, 71, 68, 71),
                thickness: 1,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 19),
                Text(
                  "Team B",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black, fontSize: 34),
                ),
                SizedBox(
                  height: 200,
                  width: 150,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '$countTeamb',
                      style: TextStyle(color: Colors.black, fontSize: 180),
                    ),
                  ),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 1 Point',
                  onpressed:
                      () => setState(() {
                        countTeamb++;
                      }),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 2 Point',
                  onpressed:
                      () => setState(() {
                        countTeamb = countTeamb + 2;
                      }),
                ),
                CustomButton(
                  width: buttonWidth,
                  height: buttonHeight,
                  text: 'Add 3 Point',
                  onpressed:
                      () => setState(() {
                        countTeamb = countTeamb + 3;
                      }),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        CustomButton(
          width: buttonWidth,
          height: buttonHeight,
          text: 'reset',
          onpressed:
              () => setState(() {
                countTeamA = countTeamb = 0;
              }),
        ),
      ],
    );
  }
}
