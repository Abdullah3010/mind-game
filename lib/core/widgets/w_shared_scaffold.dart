import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mind_game/core/assets/assets.gen.dart';
import 'package:mind_game/core/extension/build_context.dart';
import 'package:mind_game/core/extension/color_extension.dart';

class WSharedScaffold extends StatefulWidget {
  const WSharedScaffold({
    required this.body,
    this.resizeToAvoidBottomInset,
    this.appBar,
    this.bottomSheet,
    this.withSafeArea = true,
    this.isLoading = false,
    this.withBackground = false,
    this.withNavBar = false,
    super.key,
  });

  final Widget body;
  final bool withSafeArea;
  final bool? resizeToAvoidBottomInset;
  final bool? isLoading;
  final bool? withNavBar;
  final bool? withBackground;
  final Widget? appBar;
  final Widget? bottomSheet;

  @override
  State<WSharedScaffold> createState() => _WSharedScaffoldState();
}

class _WSharedScaffoldState extends State<WSharedScaffold> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9F7FFF),
              Color(0xFF8055FE),
            ],
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset ?? false,
          appBar: widget.appBar == null
              ? null
              : AppBar(
                  title: widget.appBar,
                  leading: const SizedBox(),
                  leadingWidth: 0,
                  backgroundColor: Colors.transparent,
                  forceMaterialTransparency: true,
                ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
              top: widget.withSafeArea,
              bottom: widget.withSafeArea,
              right: widget.withSafeArea,
              left: widget.withSafeArea,
              child: Stack(
                children: [
                  if (widget.withBackground ?? false)
                    Positioned(
                      bottom: 88.h,
                      child: SvgPicture.asset(
                        Assets.icons.scaffoldBg.path,
                        width: context.width,
                      ),
                    ),
                  widget.body,
                ],
              ),
            ),
          ),
          bottomSheet: widget.bottomSheet,
          bottomNavigationBar: !(widget.withNavBar ?? false)
              ? null
              : CircleNavBar(
                  activeIcons: [
                    SvgPicture.asset(
                      Assets.icons.solarCupStarBold.path,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.skyBlue,
                        BlendMode.srcIn,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.icons.vector.path,
                      width: 10,
                      height: 10,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.skyBlue,
                        BlendMode.srcIn,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.icons.iconProfile.path,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.skyBlue,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                  inactiveIcons: [
                    SvgPicture.asset(
                      Assets.icons.solarCupStarBold.path,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.blue,
                        BlendMode.srcIn,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.icons.vector.path,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.blue,
                        BlendMode.srcIn,
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.icons.iconProfile.path,
                      width: 24,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        context.theme.colorScheme.blue,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                  color: Colors.white,
                  circleColor: Colors.white,
                  height: 80,
                  circleWidth: 60,
                  activeIndex: _currentIndex,
                  onTap: _onItemTapped,
                ),
        ),
      ),
    );
  }
}
