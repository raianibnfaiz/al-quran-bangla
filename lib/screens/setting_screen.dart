import 'package:flutter/material.dart';

import '../theme_changer.dart';



class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asif Taj Tech'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: AnimatedCrossFade(
              crossFadeState: Theme.of(context).brightness == Brightness.light
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C5603AQFtuW78eNazIw/profile-displayphoto-shrink_800_800/0/1567442703746?e=2147483647&v=beta&t=N5dGxws3xJIhwPM8w_i4dlX8qLmxznmVykPCTccYHj8',
              )),
              secondChild: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5603AQFtuW78eNazIw/profile-displayphoto-shrink_800_800/0/1567442703746?e=2147483647&v=beta&t=N5dGxws3xJIhwPM8w_i4dlX8qLmxznmVykPCTccYHj8',
                ),),
              duration: Duration(milliseconds: 200),
            ),
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Light Mode'),
            groupValue: ThemeMode.light,
            value: ThemeMode.light, onChanged: (ThemeMode? value) {  },
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Dark Mode'),
            groupValue: ThemeMode.light,
            value: ThemeMode.dark, onChanged: (ThemeMode? value) {  },
          ),
          RadioListTile<ThemeMode>(
            title: const Text('System Mode'),
            groupValue: ThemeMode.light,
            value: ThemeMode.system, onChanged: (ThemeMode? value) {  },
          ),

        ],
      ),
    );
  }
}
