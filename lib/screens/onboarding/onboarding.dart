import 'package:confesso/router/router_path.dart';
import 'package:confesso/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  List<Map<String, String>> pageContent = [
    {
      "title": "Share Your Thoughts Anonymously",
      "description":
          "Post confessions freely without revealing your identity. Express yourself safely and honestly.",
      "file_name": "social",
    },
    {
      "title": "Explore Confessions from Others",
      "description":
          "Browse through posts from your college or community. See what others are sharing and connect through shared experiences.",
      "file_name": "click",
    },
    {
      "title": "Engage with UpVote & DownVotes",
      "description":
          "Upvote posts you resonate with and leave supportive or thoughtful comments to join the conversation.",
      "file_name": "upvote",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: pageContent.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: OnBoardingPage(
                      title: pageContent[index]['title']!,
                      description: pageContent[index]['description']!,
                      fileName: pageContent[index]['file_name']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: Row(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: pageContent.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.lightBlue,
                dotColor: Color.fromARGB(255, 224, 224, 224),
                dotHeight: 10,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                if (controller.page != null) {
                  if (controller.page! == pageContent.length - 1) {
                    context.pushReplacement(AppRoutes.authScreen);
                  } else {
                    int nextPage = (controller.page! + 1).toInt();
                    controller.animateToPage(
                      nextPage,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                }
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
