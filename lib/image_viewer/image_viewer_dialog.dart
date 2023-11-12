import 'package:eclipse_test/core/widgets/safe_image.dart';
import 'package:eclipse_test/image_viewer/bloc/image_viewer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageViewerDialog extends StatelessWidget {
  static show(BuildContext context, ImageViewerQubit imageBloc) {
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        backgroundColor: Colors.black54,
        child: ImageViewerDialog(imageBloc: imageBloc),
      ),
    );
  }

  final ImageViewerQubit imageBloc;

  const ImageViewerDialog({
    super.key,
    required this.imageBloc,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageViewerQubit, ImageViewerState>(
      bloc: imageBloc,
      builder: (context, state) {
        return state.isLoading
            ? const SizedBox.shrink()
            : _buildPageView(context, state);
      },
    );
  }

  Widget _buildPageView(BuildContext context, ImageViewerState state) {
    return PageView.builder(
      itemCount: state.imagesList.length,
      onPageChanged: (index) => imageBloc.processNewImages(index),
      itemBuilder: (context, index) {
        return SafeImage(
          imageUrl: state.imagesList[index].url,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }
}
