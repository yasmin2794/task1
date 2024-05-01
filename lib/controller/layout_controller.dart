import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/app_state_model.dart';
import '../view/layout_view.dart';

class LayoutController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, appState, _) {
      bool mastershow;
      bool tab;

      if (MediaQuery.of(context).size.width < 800) {
        mastershow = false;
        tab = false;
      } else if (MediaQuery.of(context).size.width < 1200) {
        mastershow = true;
        tab = false;
      } else {
        mastershow = true;
        tab = true;
      }
      return LayoutView(
        appState: appState,
        mastershow: mastershow,
        show: tab,
        handleFrontButton: () => _handleFrontButton(appState),
        handleBackButton: () => _handleBackButton(appState),
        handleSignInButton: () => _handleSignInButton(appState),
        handleNotificationButton: () => _handleNotificationButton(appState),
      );
    });
  }

  void _handleFrontButton(AppStateModel appState) {
    appState.updateFrontButton();
  }

  void _handleBackButton(AppStateModel appState) {
    appState.updateBackButton();
  }

  void _handleSignInButton(AppStateModel appState) {
    appState.updateSignInButton();
  }

  void _handleNotificationButton(AppStateModel appState) {
    appState.updateNotificationButton();
  }
}
