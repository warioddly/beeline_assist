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
          style: TextStyle(
              color: titleColor, fontWeight: FontWeight.w700, fontSize: 20),
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
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const StartScreen(),
                ),
              ),
              icon: Center(
                child: SvgPicture.asset(
                  'assets/images/icons/logout.svg',
                  semanticsLabel: 'A red up arrow',
                  color: Colors.black,
                ),
              ),
            )
          else
            SizedBox(
              width: 207,
              height: 48,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Container(
                      width: 207,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(141, 139, 140, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 68,
                    child: Container(
                      width: 72,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            begin: Alignment(1, 0),
                            end: Alignment(0, 1),
                            colors: [
                              Color.fromRGBO(249, 212, 35, 1),
                              Color.fromRGBO(255, 159, 0, 1),
                              Color.fromRGBO(255, 201, 0, 1)
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (68 - 24) / 2,
                    left: 87,
                    child: InkWell(
                      onTap: () {
                        // Navigate to RU page or perform some other action
                      },
                      child: const Text(
                        'RU',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Open Sans',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (68 - 24) / 2,
                    left: 21,
                    child: InkWell(
                      onTap: () {
                        // Navigate to EN page or perform some other action
                      },
                      child: const Text(
                        'EN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(15, 15, 15, 1),
                            fontFamily: 'Open Sans',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (68 - 24) / 2,
                    left: 153,
                    child: InkWell(
                      onTap: () {
                        // Navigate to KG page or perform some other action
                      },
                      child: const Text(
                        'KG',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(15, 15, 15, 1),
                            fontFamily: 'Open Sans',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                            height: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
