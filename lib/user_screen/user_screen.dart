import 'package:eclipse_test/user_screen/view/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eclipse_test/user_screen/bloc/bloc/user_screen_bloc.dart';

class UserScreen extends StatelessWidget {
  late final _controller = PageController();

  UserScreen({super.key});

  void onStateChanged(BuildContext context, UserScreenState state) {
    if (!_controller.hasClients) return;
    if (state.currentScreen != _controller.page?.toInt()) {
      _controller.animateToPage(
        state.currentScreen,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => UserScreenBloc(
          const UserScreenState(
            isLoading: true,
          ),
        )..add(UserScreeenInitEvent()),
        child: Scaffold(
          body: BlocConsumer<UserScreenBloc, UserScreenState>(
              listener: onStateChanged,
              buildWhen: (previous, current) => previous.users != current.users,
              builder: (context, state) {
                return _buildState(context, state);
              }),
        ),
      ),
    );
  }

  Widget _buildState(BuildContext context, UserScreenState state) {
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (state.users.isNotEmpty)
            Flexible(
              flex: 6,
              child: PageView.builder(
                controller: _controller,
                itemBuilder: (context, index) =>
                    UserCard(user: state.users[index]),
              ),
            ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              context.read<UserScreenBloc>().add(NextScreenEvent());
            },
            child: const Text('Дальше'),
          )
        ],
      ),
    );
  }
}
