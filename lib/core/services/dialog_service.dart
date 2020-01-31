import 'dart:async';

import 'package:delicious/core/models/alert_request.dart';
import 'package:delicious/core/models/alert_response.dart';

class DialogService {
  Function(AlertRequest) _showDialogListener;
  Completer<AlertResponse> _dialogCompleter;

  /// Registers a callback function. Typically to show the dialog
  void registerDialogListener(Function(AlertRequest) showDialogListener) {
    _showDialogListener = showDialogListener;
  }

  /// Calls the dialog listener and returns a Future that will wait for dialogComplete.
  Future<AlertResponse> showDialog({
    String title,
    String description,
    String buttonTitle = 'OK',
  }) {
    _dialogCompleter = Completer<AlertResponse>();
    _showDialogListener(AlertRequest(
      title: title,
      description: description,
      buttonTitle: buttonTitle,
    ));
    return _dialogCompleter.future;
  }

  /// Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete(AlertResponse response) {
    _dialogCompleter.complete(response);
    _dialogCompleter = null;
  }
}
