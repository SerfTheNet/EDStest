import 'package:eclipse_test/core/helpers/extensions/context_extension.dart';
import 'package:eclipse_test/core/widgets/safe_image.dart';
import 'package:eclipse_test/image_viewer/bloc/image_viewer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class ImageViewerDialog extends StatelessWidget {
  static show(BuildContext context, ImageViewerBloc imageBloc) {
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        backgroundColor: Colors.black54,
        child: ImageViewerDialog(imageBloc: imageBloc),
      ),
    );
  }

  final ImageViewerBloc imageBloc;

  ImageViewerDialog({
    super.key,
    required this.imageBloc,
  }) {
    imageBloc.add(ImageViewerEvent(index: 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageViewerBloc, ImageViewerState>(
      bloc: imageBloc,
      builder: (context, state) {
        return state.isLoading
            ? FittedBox(
                fit: BoxFit.fitWidth,
                child: Shimmer.fromColors(
                  baseColor: context.theme.colorScheme.onSurface,
                  highlightColor: context.theme.colorScheme.onPrimary,
                  child: const SizedBox(),
                ),
              )
            : _buildPageView(context, state);
      },
    );
  }

  Widget _buildPageView(BuildContext context, ImageViewerState state) {
    return PageView.builder(
      itemCount: state.imagesList.length,
      onPageChanged: (value) => imageBloc.add(ImageViewerEvent(index: value)),
      itemBuilder: (context, index) {
        return SafeImage(
          imageUrl: state.imagesList[index].url,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }
}
