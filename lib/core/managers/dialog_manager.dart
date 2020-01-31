import 'package:delicious/core/models/alert_request.dart';
import 'package:delicious/core/models/alert_response.dart';
import 'package:delicious/core/services/dialog_service.dart';
import 'package:delicious/locator.dart';
import 'package:delicious/ui/shared/app_colors.dart';
import 'package:delicious/ui/shared/text_styles.dart';
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

  void _showDialog(AlertRequest request) {
    Alert(
        context: context,
        title: request.title,
        desc: request.description,
        closeFunction: () =>
            _dialogService.dialogComplete(AlertResponse(confirmed: false)),
        buttons: [
          DialogButton(
            color: primaryColor,
            child: Text(
              request.buttonTitle,
              style: subHeaderStyle,
            ),
            onPressed: () {
              _dialogService.dialogComplete(AlertResponse(confirmed: true));
              Navigator.of(context).pop();
            },
          )
        ]).show();
  }
}
