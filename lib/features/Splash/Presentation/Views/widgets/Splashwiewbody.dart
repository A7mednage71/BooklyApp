import 'package:bookly/constants.dart';
import 'package:bookly/core/Utils/AssetsData.dart';
import 'package:bookly/features/HomeView/Presentation/Views/HomeView.dart';
import 'package:bookly/features/Splash/Presentation/Views/widgets/SlidingWedget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    initslidinganimation();

    NavigationToHomeview();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsDate.logo),
        Sliding_animation(slidinganimation: slidinganimation)
      ],
    );
  }

  void initslidinganimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
    slidinganimation.addListener(() {
      setState(() {});
    });
  }

  void NavigationToHomeview() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const Home_View(),
      //   transition: Transition.fade,
      //   duration: KDuration,
      // );
      GoRouter.of(context).push('/Home_View');
    });
  }
}
