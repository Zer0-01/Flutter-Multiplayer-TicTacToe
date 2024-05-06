// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_multiplayer_tictactoe/responsive/responsive.dart';
import 'package:flutter_multiplayer_tictactoe/screens/createRoomScreen.dart';
import 'package:flutter_multiplayer_tictactoe/screens/joinRoomScreen.dart';
import 'package:flutter_multiplayer_tictactoe/widgets/customButton.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onPress: () {
                  createRoom(context);
                },
                label: "Create Room"),
            const SizedBox(height: 20),
            CustomButton(
                onPress: () {
                  joinRoom(context);
                },
                label: "Join Room"),
          ],
        ),
      ),
    );
  }
}
