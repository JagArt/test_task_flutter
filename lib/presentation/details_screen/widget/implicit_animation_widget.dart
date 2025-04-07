import 'package:flutter/material.dart';

class ImplicitAnimationWidget extends StatefulWidget {
  const ImplicitAnimationWidget({super.key});

  @override
  State<ImplicitAnimationWidget> createState() => _ImplicitAnimationWidgetState();
}

class _ImplicitAnimationWidgetState extends State<ImplicitAnimationWidget>
    with SingleTickerProviderStateMixin {
  bool _bigger = false;

  Color _newColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Implicit Animation', style: TextStyle(fontSize: 30)),
        Row(
          children: [
            AnimatedContainer(
              width: _bigger ? 50 : 100,
              height: _bigger ? 50 : 100,
              duration: Duration(milliseconds: 500),
              curve: Curves.bounceOut,
              child: FlutterLogo(),
            ),
            ElevatedButton(
              onPressed:
                  () => {
                    setState(() {
                      _bigger = !_bigger;
                    }),
                  },
              child: Text('Tap me'),
            ),
          ],
        ),
        SizedBox(height: 10),
        TweenAnimationBuilder(
          tween: ColorTween(begin: Colors.white, end: _newColor),
          duration: Duration(seconds: 2),
          onEnd:
              () => setState(() {
                _newColor = _newColor == Colors.red ? Colors.white : Colors.red;
              }),
          builder: (_, color, __) {
            return Container(height: 100, width: 100, color: color);
          },
        ),
      ],
    );
  }
}
