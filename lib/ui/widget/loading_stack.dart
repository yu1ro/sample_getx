import 'package:flutter/material.dart';

class LoadingStack extends StatelessWidget {
  final Widget? child;
  final bool isLoading;

  const LoadingStack({
    this.child,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[
      child ?? Container(),
    ];

    if (isLoading) {
      widgets.add(Container(
        color: Colors.white.withOpacity(0.5),
        constraints: const BoxConstraints.expand(),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ));
    }

    return Stack(
      children: widgets,
    );
  }
}
