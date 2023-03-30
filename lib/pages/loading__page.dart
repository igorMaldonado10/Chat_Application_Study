import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadinPage extends StatelessWidget {
  const LoadinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.white,
            )
            ,
            SizedBox(height:10),
            Text('Carregando...',
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.headline1?.color
            ),
            ),
          ],
        )
      )
    );
  }
}
