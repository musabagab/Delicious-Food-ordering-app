import 'package:delicious/core/enums/view_state.dart';
import 'package:delicious/core/viewmodels/auth_model.dart';
import 'package:flutter/material.dart';
import 'base_view.dart';

class AuthView extends StatefulWidget {
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthenticationModel>(
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: <Widget>[
            model.state == ViewState.Busy
                ? Text('Wait for server')
                : FlatButton(
                    child: Text('Signup'),
                    onPressed: () async {
                      model.signUp(
                          email: 'ahmed@gmail.com', password: 'ahmed123');
                    },
                  )
          ],
        ),
      ),
    );
  }
}
