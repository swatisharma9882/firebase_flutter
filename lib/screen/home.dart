import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/screen/login.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _hiveBox = Hive.box('myBox');

  void _logout() async {
    try {
      await FirebaseAuth.instance.signOut().then(
            (value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const Login(),
              ),
            ),
          );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  _addUsers() {
    debugPrint("test");
    FirebaseFirestore.instance
        .collection("'userData'")
        .doc('userData')
        .set({
          'id': '1',
          'name': 'abc',
        })
        .then((value) => debugPrint("Student data Added"))
        .catchError((error) => debugPrint("Student couldn't be added."));
    debugPrint("test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(_hiveBox.get('userName')??""),
        actions: [
          IconButton(
            onPressed: () => _logout(),
            icon: const Icon(Icons.login_rounded),
          )
        ],
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('userData').snapshots(),
          builder: (ctx, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.separated(
              itemBuilder: (ctx, index) {
                return Text(
                    "${snapshot.data!.docs[index]['id']}-${snapshot.data!.docs[index]['name']}");
              },
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemCount: snapshot.data!.docs.length,
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addUsers(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
