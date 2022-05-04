import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _key = 'spotlight-expanded';

class Spotlight extends StatefulWidget {
  const Spotlight({Key? key}) : super(key: key);

  @override
  State<Spotlight> createState() => _SpotlightState();
}

class _SpotlightState extends State<Spotlight> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then(
        (prefs) => setState(() => _expanded = prefs.getBool(_key) ?? true));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ExpansionPanelList(
        expandedHeaderPadding: EdgeInsets.zero,
        expansionCallback: (int index, bool isExpanded) async {
          _expanded = !isExpanded;
          SharedPreferences.getInstance()
              .then((prefs) => prefs.setBool(_key, _expanded));
          setState(() {});
        },
        children: [
          ExpansionPanel(
            isExpanded: _expanded,
            canTapOnHeader: true,
            headerBuilder: (context, isExpanded) {
              return const ListTile(
                title: Text('SPOTLIGHT'),
              );
            },
            body: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              height: 120,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
