import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  ValueNotifier<List<String>> tags = ValueNotifier([]);
  TextEditingController tagController = TextEditingController();
  final List<String> nepalColleges = [
    // Public Universities
    'Tribhuvan University',
    'Kathmandu University',
    'Purbanchal University',
    'Pokhara University',
    'Nepal Open University',
    'Agriculture and Forestry University',
    'Nepal Sanskrit University',
    'Mid-Western University',
    'Far-Western University',
    'Lumbini Buddhist University',
    'Rajarshi Janak University',

    // Medical Colleges
    'Kathmandu Medical College',
    'Nepal Medical College',
    'Manipal College of Medical Sciences',
    'Chitwan Medical College',
    'Patan Academy of Health Sciences',
    'B.P. Koirala Institute of Health Sciences',
    'National Academy of Medical Sciences',

    // Engineering Colleges
    'Himalaya College of Engineering',
    'Kantipur Engineering College',
    'Kathmandu Engineering College',
    'Acme Engineering College',
    'Khwopa Engineering College',
    'Kathmandu University School of Engineering',
    'Paschimanchal Campus',

    // Management and Business Colleges
    'The British College',
    'Padmashree International College of Management',
    'ISMT College',
    'Kathmandu Model College',
    'Informatics College Pokhara',
    'Unique College',
    'Nepal Commerce Campus',

    // Technical and Vocational Institutes (CTEVT affiliated)
    'Council for Technical Education and Vocational Training (CTEVT)',
    'Institute of Engineering, Pulchowk Campus',
    'Central Campus of Technology',
    'Janakpur Technical School',
    'Birgunj Technical School',
    'Lalitpur Technical School',

    // Other Notable Colleges
    'St. Xavier\'s College, Maitighar',
    'Little Angels College',
    'National School of Sciences',
    'Ace Institute of Management',
    'Nepal College of Information Technology (NCIT)',
    'Kathmandu College of Management (KCM)',
    'National College of Engineering',
    'Tribhuvan Multiple Campus',

    // Arts and Humanities Colleges
    'Ratna Rajya Laxmi Campus',
    'Sanskrit University College',
    'Nepal Music and Fine Arts College',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  margin: EdgeInsets.all(5),
                  duration: Duration(seconds: 2),
                  clipBehavior: Clip.antiAlias,
                  behavior: SnackBarBehavior.floating,
                  content: Text(
                    'Confession has been posted successfully!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
              context.pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                'Post',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        behavior: HitTestBehavior.translucent,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[50],
                  ),
                  child: Text(
                    '🕵️You\'re posting anonymously. Be respectful.',
                    selectionColor: Colors.blue[100],
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Write a confession',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    // fillColor: Colors.grey[200],
                  ),
                  maxLines: 6,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: tagController,
                        decoration: const InputDecoration(
                          hintText: 'Add a tag (optional)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        if (tagController.text.isNotEmpty &&
                            !tags.value.contains(tagController.text)) {
                          tags.value = [...tags.value, tagController.text];
                        }
                        tagController.clear();
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                ValueListenableBuilder(
                  valueListenable: tags,
                  builder: (context, value, _) {
                    return Wrap(
                      spacing: 5,
                      children: value.map((tag) {
                        return Chip(
                          label: Text(tag),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onDeleted: () {
                            tags.value = [...tags.value]..remove(tag);
                          },
                        );
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Text(
                  'College (optional)',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                DropdownMenu<String>(
                  enableSearch: false,
                  enableFilter: false,
                  menuHeight: 250,
                  hintText: 'Select a college',
                  textStyle: const TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  dropdownMenuEntries: nepalColleges.map((college) {
                    return DropdownMenuEntry<String>(
                      value: college,
                      label: college,
                      style: const ButtonStyle(
                        textStyle: WidgetStatePropertyAll(
                          TextStyle(
                            color: Colors.black,
                            fontFamily: 'InriaSerif',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onSelected: (String? value) {
                    setState(() {
                      // selectedCollege = value;
                    });
                    print('Selected college: $value');
                  },
                ),
                // DropdownMenu(
                //     dropdownMenuEntries: nepalColleges.map((collegeName) {
                //   return DropdownMenuEntry<String>(
                //     value: collegeName,
                //     label: collegeName,
                //   );
                // }).toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
