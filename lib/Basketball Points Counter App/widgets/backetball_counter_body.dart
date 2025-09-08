import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/cubit/counter_cubit.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/cubit/counter_state.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/widgets/custom_button.dart';

class BacketballCounterBody extends StatelessWidget {
  const BacketballCounterBody({super.key});
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    double buttonHeight = 60;

    var cubit = BlocProvider.of<CounterCubit>(context);
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFf7f7f6), Color(0xFFf7f7f6)],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 19),
                      Text(
                        "Team A",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '${cubit.countTeamA}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 180,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 1 Point',
                        onPressed: () {
                          cubit.incrementA(team: 'A', buttonnumber: 1);
                        },
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 2 Point',
                        onPressed: () {
                          cubit.incrementA(team: 'A', buttonnumber: 2);
                        },
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 3 Point',
                        onPressed: () {
                          cubit.incrementA(team: 'A', buttonnumber: 3);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 600,
                    child: VerticalDivider(
                      color: Color.fromARGB(255, 71, 68, 71),
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 19),
                      Text(
                        "Team B",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '${cubit.countTeamb}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 180,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 1 Point',
                        onPressed:
                            () => cubit.incrementB(team: "B", buttonnumber: 1),
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 2 Point',
                        onPressed:
                            () => cubit.incrementB(team: "B", buttonnumber: 2),
                      ),
                      CustomButton(
                        width: buttonWidth,
                        height: buttonHeight,
                        text: 'Add 3 Point',
                        onPressed:
                            () => cubit.incrementB(team: "B", buttonnumber: 3),
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
                onPressed: () => cubit.reset(),
              ),
            ],
          ),
        );
      },
    );
  }
}
