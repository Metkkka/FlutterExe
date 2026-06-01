import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';

String _decoration(int numberValue) {
  if (numberValue == 0) {
    return "Zero";
  } else if (numberValue > 0) {
    return "Positive";
  } else {
    return "Negative";
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: numberSelectedNotifier,
      builder: (context, numberSelected, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!(numberSelected >= 10)) {
                          numberSelectedNotifier.value = numberSelected + 1;
                        }
                      },
                      child: Icon(Icons.add),
                    ),
                    Text(numberSelected.toString()),
                    ElevatedButton(
                      onPressed: () {
                        if (!(numberSelected <= -10)) {
                          numberSelectedNotifier.value = numberSelected - 1;
                        }
                      },
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
              Text(_decoration(numberSelected)),
            ],
          ),
        );
      },
    );
  }
}
