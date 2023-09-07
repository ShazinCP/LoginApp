import 'package:flutter/material.dart';
import 'package:logined/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List name = [
    'Shazin',
    'Arshad',
    'Shameem',
    'Ashique',
    'Sabeeh',
    'Nikhil Sir',
    'Salman',
    'Ronaldo',
    'Sajfar',
    'Shaheer'
  ];
  List images = [
    'assets/images/Shazin.png',
    'assets/images/Arshad.png',
    'assets/images/Shameem.png',
    'assets/images/Ashique.png',
    'assets/images/Sabeeh.png',
    'assets/images/Nikhil .png',
    'assets/images/Salman.png',
    'assets/images/Ronaldo.png',
    'assets/images/Sajfar.png',
    'assets/images/Shaheer.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shatsup'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: index.isEven
                  ? CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        images[index],
                      ),
                    )
                  : Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage(
                          images[index],
                        ),
                      ),
                    ),
              title: Text(name[index]),
              subtitle: const Text('new messages'),
              trailing: const Text('10.22 am'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 1,
              color: Colors.grey,
            );
          },
          itemCount: images.length,
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
