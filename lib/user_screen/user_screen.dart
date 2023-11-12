import 'dart:math';

import 'package:eclipse_test/core/helpers/extensions/padding_extension.dart';
import 'package:eclipse_test/user_screen/view/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eclipse_test/user_screen/bloc/bloc/user_screen_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userScreenBlock = UserScreenBloc(
      const UserScreenState(),
    )..add(UserScreeenInitEvent());

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildUserState(context, userScreenBlock),
              _bulidControlButtons(context, userScreenBlock).withPadding(
                const EdgeInsets.symmetric(horizontal: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserState(BuildContext context, UserScreenBloc bloc) {
    return BlocBuilder<UserScreenBloc, UserScreenState>(
      bloc: bloc,
      builder: (context, state) {
        return Expanded(
          child: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : _buildAnimatedCard(context, state),
        );
      },
    );
  }

  Widget _bulidControlButtons(BuildContext context, UserScreenBloc bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => bloc.add(PreviousScreenEvent()),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        IconButton(
          onPressed: () => bloc.add(NextScreenEvent()),
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget _buildAnimatedCard(BuildContext context, UserScreenState state) {
    final slideTween = Tween(
      begin: Offset.fromDirection(pi / 2, 1),
      end: Offset.zero,
    );
    final fadeTween = Tween<double>(
      begin: 0,
      end: 1,
    );

    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation.drive<double>(fadeTween),
        child: SlideTransition(
          position: animation.drive<Offset>(slideTween),
          child: child,
        ),
      ),
      child: UserCard(
        key: ValueKey(state.currentUser),
        user: state.users![state.currentUser],
      ),
    );
  }
}
