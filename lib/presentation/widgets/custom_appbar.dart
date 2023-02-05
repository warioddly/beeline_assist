import 'package:beeline_assistant/presentation/widgets/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.leading = true,
    this.title,
    this.titleColor,
    this.logout = false,
    this.leadingColor = Colors.black,
  });

  final bool leading;
  final String? title;
  final Color? titleColor;
  final Color? leadingColor;
  final bool logout;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          title ?? '',
          style: TextStyle(color: titleColor, fontWeight: FontWeight.w700, fontSize: 20),
        ),
        automaticallyImplyLeading: false,
        leading: leading
            ? InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: const EdgeInsets.only(left: 15, top: 15),
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: leadingColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        semanticsLabel: 'A red up arrow',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        elevation: 0,
        centerTitle: true,
        actions: [
          if (logout)
            IconButton(
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute<void>(builder: (BuildContext context) => const StartScreen())),
              icon: Center(
                child: SvgPicture.asset(
                  'assets/images/icons/logout.svg',
                  semanticsLabel: 'A red up arrow',
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
