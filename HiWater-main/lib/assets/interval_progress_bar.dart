import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({super.key});

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [_bar(), _label()],
    );
  }

  Widget _bar() {
    return Column(
      children: [
        _interval(customColor: const Color.fromARGB(255, 66, 14, 255)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 94, 173, 167)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 118, 188, 116)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 145, 186, 62)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 192, 181, 60)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 230, 190, 64)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 237, 169, 59)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 235, 138, 60)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 229, 95, 72)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 237, 95, 72)),
      ],
    );
  }

  Widget _separator() {
    return const SizedBox(
      height: 3,
    );
  }

  Widget _interval({required Color customColor}) {
    return SizedBox(
      width: 15.0,
      height: 3.8,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: customColor,
        ),
      ),
    );
  }

  Widget _label() {
    return  Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
      )
      ],
    );
  }
}
