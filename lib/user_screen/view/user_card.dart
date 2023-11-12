import 'package:eclipse_test/core/helpers/extensions/context_extension.dart';
import 'package:eclipse_test/core/widgets/safe_image.dart';
import 'package:eclipse_test/image_viewer/bloc/image_viewer_cubit.dart';
import 'package:eclipse_test/image_viewer/image_viewer_dialog.dart';
import 'package:eclipse_test/user_screen/entities/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCard extends StatelessWidget {
  static const _bulletSign = '\u2022';

  final User user;

  late final ImageViewerQubit imageCubit;

  UserCard({
    super.key,
    required this.user,
  }) {
    imageCubit = ImageViewerQubit(
      ImageViewerState(),
      user.id,
    )..processNewImages(0);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildUserPhoto(context),
            ..._buildCardHeading(context),
            _buildBulletListInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildUserPhoto(BuildContext context) {
    return BlocBuilder<ImageViewerQubit, ImageViewerState>(
      bloc: imageCubit,
      buildWhen: (previous, current) =>
          previous.imagesList.isEmpty && current.imagesList.isNotEmpty,
      builder: (context, state) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: InkWell(
            onTap: () => ImageViewerDialog.show(context, imageCubit),
            child: SafeImage(
              key: ValueKey(state),
              imageUrl: state.imagesList.firstOrNull?.url ?? "",
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildCardHeading(BuildContext context) {
    return [
      if (user.name != null)
        Text(
          user.name!,
          style: context.textTheme.headlineMedium,
        ),
      if (user.company?.name != null)
        Text(
          user.company!.name,
          style: context.textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
    ];
  }

  Widget _buildBulletListInfo(BuildContext context) {
    final bulletList = [
      user.username,
      user.phone,
      user.email,
      user.address.toString(),
    ]
        .where((field) => field?.isNotEmpty == true)
        .map((field) => '$_bulletSign $field')
        .join('\n');

    return Text(
      bulletList,
      style: context.textTheme.bodyMedium,
    );
  }
}
