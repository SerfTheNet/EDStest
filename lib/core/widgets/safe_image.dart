import 'package:eclipse_test/core/assets_catalog.dart';
import 'package:flutter/cupertino.dart';

class SafeImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final String placeholder;

  const SafeImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.fill,
    this.placeholder = AssetsCatalog.photoPlaceholder,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      image: imageUrl,
      placeholder: placeholder,
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset(
          placeholder,
          fit: BoxFit.cover,
        );
      },
      fit: fit,
    );
  }
}
