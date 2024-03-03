import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/controllers/theme_controller.dart';
import 'package:hello_world/utils/custom_colors.dart';
import 'package:hello_world/widgets/button.dart';
import 'package:hello_world/widgets/previous_result.dart';
import 'package:hello_world/widgets/toggle_switch.dart';

import '../controllers/calculator_controller.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final ctrl = ThemeController.instance;
    final calcController = CalculatorController.instance;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 48.0, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              ToggleSwitch(
                value: ctrl.isLight(),
                onChanged: (bool value) {
                  setState(() {
                    ctrl.toggleTheme();
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: PreviousResult(
                  text: calcController.previousValue,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  calcController.value,
                  style: TextStyle(
                    fontSize: 48,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.count(
                    primary: false,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.clear();
                          });
                        },
                        backgroundColor: Colors.amber,
                        child: const Text("C"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.percentage();
                          });
                        },
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        child: const Text("%"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.backspace();
                          });
                        },
                        backgroundColor: CustomColors.secondaryBlue,
                        child: const Icon(
                          Icons.backspace,
                          color: Colors.white,
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setOperation(Operation.div);
                          });
                        },
                        color: Colors.white,
                        backgroundColor: CustomColors.mainBlue,
                        child: const Text(
                          "/",
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("7");
                          });
                        },
                        child: const Text("7"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("8");
                          });
                        },
                        child: const Text("8"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("9");
                          });
                        },
                        child: const Text("9"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setOperation(Operation.multi);
                          });
                        },
                        backgroundColor: CustomColors.mainBlue,
                        child: const Icon(
                          Icons.clear_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("4");
                          });
                        },
                        child: const Text("4"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("5");
                          });
                        },
                        child: const Text("5"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("6");
                          });
                        },
                        child: const Text("6"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setOperation(Operation.sub);
                          });
                        },
                        backgroundColor: CustomColors.mainBlue,
                        child: const Icon(
                          Icons.remove_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("1");
                          });
                        },
                        child: const Text("1"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("2");
                          });
                        },
                        child: const Text("2"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("3");
                          });
                        },
                        child: const Text("3"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setOperation(Operation.add);
                          });
                        },
                        backgroundColor: CustomColors.mainBlue,
                        child: const Icon(
                          Icons.add_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.invertValue();
                          });
                        },
                        child: SvgPicture.asset(
                          "assets/icons/more_or_less.svg",
                          height: 32,
                          width: 32,
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue("0");
                          });
                        },
                        child: const Text("0"),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.setValue(",");
                          });
                        },
                        child: const Text(","),
                      ),
                      Button(
                        onPressed: () {
                          setState(() {
                            calcController.calc();
                          });
                        },
                        color: Colors.white,
                        backgroundColor: CustomColors.secondaryBlue,
                        child: const Text(
                          "=",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
