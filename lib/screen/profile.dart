import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  _ScreenProfileState createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    final S s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '${s.start_blog}  ${position.toString()}',
                        style: const TextStyle(fontSize: 22.0),
                      ),
                    ),
                  );
                },
                itemCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
