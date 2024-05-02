import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';

class TabSection extends StatelessWidget {
  final String sectionname;
  TabSection({required this.sectionname});

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppStateModel>(context, listen: true);

    return Center(
      child: Text('$sectionname section'),
    );
  }
}
