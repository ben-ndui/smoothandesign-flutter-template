import 'package:authentication/authentication_controller.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smoothTheme/widgets/smooth_loader.dart';

import '../../router/router.gr.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: SmoothAuth().onAuthChange(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SmoothLoader(onPressed: () {});
            } else if (snapshot.hasData) {
              context.router.replace(const SmoothAccueil());
              return Container();
            }else if (!snapshot.hasData) {
              return Scaffold(
                body: SafeArea(
                  child: SmoothLoader(
                    onPressed: () {
                      context.router.replace(const SmoothSplash());
                    },
                  ),
                ),
              );
            } else{
              return Scaffold(
                body: SafeArea(
                  child: SmoothLoader(
                    onPressed: () {
                      context.router.replace(const SmoothLogin());
                    },
                  ),
                ),
              );
            }
          } else {
            return Scaffold(
              body: SafeArea(
                child: SmoothLoader(
                  onPressed: () {
                    context.router.replace(const SmoothRegister());
                  },
                ),
              ),
            );
          }
        });
  }
}
