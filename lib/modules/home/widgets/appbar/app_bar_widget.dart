import 'package:flutter/material.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(gradient: AppTheme.gradients.appBar),
                  height: 168,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(user.photoUrl!)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text.rich(TextSpan(
                            text: "Olá, ",
                            style: AppTheme.textStyles.text,
                            children: [
                              TextSpan(
                                style: AppTheme.textStyles.textBold,
                                text: user.name,
                              )
                            ])),
                      ]),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.fromBorderSide(
                                BorderSide(color: AppTheme.colors.border))),
                        child: IconButton(
                          onPressed: () {
                            print("oi");
                          },
                          color: AppTheme.colors.white,
                          icon: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TODO: replace placeholder
                          Container(
                            width: 156,
                            height: 160,
                            color: Colors.red,
                          ),
                          Container(
                            width: 156,
                            height: 160,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
