import 'dart:math';

import 'package:confesso/blocs/search_cubit/search_cubit.dart';
import 'package:confesso/screens/home/post_card.dart';
import 'package:confesso/theme/post_college_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> tags = const [
    '#exam',
    '#love',
    '#hostel',
    '#friends',
    '#crush',
    '#mentalhealth',
    '#food',
    '#campus',
    '#study',
  ];

  final List<String> colleges = const [
    'Tribhuvan University',
    'Pokhara University',
    'Purbanchal University',
    'Hetauda School of Management',
    'Kathmandu University',
    'The British College',
  ];

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.grey.shade100,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (text) {
                  if (text.trim().isNotEmpty) {
                    context.read<SearchCubit>().searchKeyword(text);
                  }
                },
                controller: textEditingController,
                decoration: InputDecoration(
                  // labelText: textEditingController.text,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  hintText: 'Search for confessions, users, or tags...',
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.8,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildTagSection(),
              const SizedBox(height: 10),
              _buildCollegeSection(),
              const SizedBox(height: 20),
              BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state is SearchResults &&
                      state.searchResults.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Results',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ...state.searchResults.map(
                          (post) {
                            return PostCard(
                              id: post.id,
                              username: post.username,
                              profilePicture: post.profilePicture,
                              postContent: post.postContent,
                              tags: tags,
                              college: post.college,
                              likes: post.upvote,
                              comments: post.comments,
                              disLikes: post.downvote,
                              attachments: post.attachments,
                              createdAt: post.createdAt,
                            );
                          },
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        'Search for confessions',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTagSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Tags',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tags.map((tag) {
            return InkResponse(
              radius: 20,
              onTap: () {
                setState(() {
                  textEditingController.text = tag;
                  context.read<SearchCubit>().searchKeyword(tag);
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400]!,
                    width: 0.8,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildCollegeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Filter by College',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: colleges.map((college) {
            final randomPair = colorPairs[Random().nextInt(colorPairs.length)];
            final bgColor = hexToColor(randomPair['bg']!);
            final textColor = hexToColor(randomPair['text']!);
            return InkResponse(
              radius: 20,
              onTap: () {
                setState(() {
                  textEditingController.text = college;
                  context.read<SearchCubit>().searchKeyword(college);
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: bgColor,
                    width: 0.8,
                  ),
                ),
                child: Text(
                  college,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

Color hexToColor(String hex) {
  return Color(int.parse(hex.replaceFirst('#', '0xFF')));
}
