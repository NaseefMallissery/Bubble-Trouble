import 'dart:developer';

import 'package:bubble_truoble/screens/home_screen/controller/player_controller.dart';
import 'package:bubble_truoble/screens/home_screen/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayerProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink[100],
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(provider.rocketX, provider.rockety),
                      child: Container(
                        width: 2.5,
                        height: provider.rocketHeight,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      alignment: Alignment(PlayerProvider.playerX, 1),
                      child: Container(
                        width: 30,
                        height: 40,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              child: Consumer<PlayerProvider>(
                builder: (context, value, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      icon: Icons.arrow_back,
                      onTap: () {
                        value.moveLeft();
                        log('move leftt');
                      },
                    ),
                    CustomButton(
                      icon: Icons.rocket_outlined,
                      onTap: () {
                        value.fireRocket(context);
                      },
                    ),
                    CustomButton(
                      icon: Icons.arrow_forward,
                      onTap: () {
                        value.moveRigth();
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
