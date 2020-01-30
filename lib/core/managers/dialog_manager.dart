import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/locator.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DialogManager extends StatefulWidget {
  final Widget child;
  DialogManager({Key key, this.child}) : super(key: key);

  @override
  _DialogManagerState createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = locator<DialogService>();

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }

  void _showDialog() {
    Alert(
        context: context,
        title: "Declicous",
        desc: "You logged in succesfully",
        closeFunction: () => _dialogService.dialogComplete(),
        buttons: [
          DialogButton(
            child: Text('Ok'),
            onPressed: () {
              _dialogService.dialogComplete();
              Navigator.of(context).pop();
            },
          )
        ]).show();
  }
}
