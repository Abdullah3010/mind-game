import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';
import 'package:mind_game/core/extension/text_theme_extension.dart';

class WAppButton extends StatefulWidget {
  const WAppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isFilled = true,
    this.isDisabled = false,
    this.width,
    this.height,
    this.style,
    this.padding,
    this.radius,
    this.borderColor,
  });

  final String title;
  final bool isFilled;
  final bool isDisabled;
  final Function() onTap;
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;

  @override
  State<WAppButton> createState() => _WAppButtonState();
}

class _WAppButtonState extends State<WAppButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (!isLoading && !widget.isDisabled) ? onTap : null,
      child: Container(
        width: widget.width ?? 188.w,
        height: widget.height ?? 44.h,
        padding: widget.padding ??
            EdgeInsets.symmetric(
              horizontal: 26.w,
              vertical: 8.h,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius ?? 36.r),
          color: widget.isFilled
              ? (!(widget.isDisabled) ? context.theme.colorScheme.buttonColor : context.theme.colorScheme.grey)
              : (!(widget.isDisabled)
                  ? context.theme.colorScheme.white
                  : context.theme.colorScheme.grey.withValues(alpha: 0.7)),
          border: !widget.isFilled
              ? Border.all(
                  color: widget.borderColor ??
                      (!(widget.isDisabled) ? context.theme.colorScheme.buttonColor : context.theme.colorScheme.grey),
                  width: 1.w,
                  strokeAlign: BorderSide.strokeAlignCenter,
                )
              : null,
        ),
        child: isLoading
            ? CupertinoActivityIndicator(
                color: context.theme.colorScheme.white,
              )
            : Center(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: widget.style ??
                      context.textTheme.button.copyWith(
                        color: widget.isFilled
                            ? (!(widget.isDisabled)
                                ? context.theme.colorScheme.white
                                : context.theme.colorScheme.lightGery)
                            : (!(widget.isDisabled)
                                ? context.theme.colorScheme.buttonColor
                                : context.theme.colorScheme.lightGery),
                      ),
                ),
              ),
      ),
    );
  }

  Future<void> onTap() async {
    if (!widget.isDisabled) {
      if (mounted) {
        setState(() {
          isLoading = true;
        });
      }

      await widget.onTap();

      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }
}
