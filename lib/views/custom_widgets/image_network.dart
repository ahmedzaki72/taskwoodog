import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/theme_colors.dart';

class ImageNetwork extends StatelessWidget {
  final String? url;
  final double? height;
  final double? width;
  final Widget? errorWidget;
  final bool cover;
  final bool fill;
  final BoxFit boxFitStatic;

  const ImageNetwork({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.errorWidget,
    this.cover = false,
    this.fill = false,
    this.boxFitStatic = BoxFit.fill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url!,
      fit: boxFitStatic,
      height: height,
      width: width,
    );
    // return CachedNetworkImage(
    //   height: height,
    //   width: width,
    //   imageUrl: url ?? " ",
    //   fit: fill ? BoxFit.fill : cover ? BoxFit.cover : BoxFit.contain,
    //   errorWidget: (context, url, error) => errorWidget != null
    //       ? errorWidget!
    //       : const Center(
    //           child: Icon(
    //             Icons.error,
    //             color: TColor.error,
    //           ),
    //         ),
    // );
  }
}