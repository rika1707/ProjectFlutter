import 'package:flutter/widgets.dart';

class TransicionPage extends PageRouteBuilder {
  final Widget page;

  TransicionPage(this.page)
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return page;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
                  return Transform.scale(
                    scale: animation.value,
                    child: FadeTransition(
                      child: child,
                      opacity: animation,
                    ),
                  );
                });
}
