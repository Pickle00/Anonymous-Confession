import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  final Map<String, dynamic>? postData;
  const PostScreen({
    super.key,
    this.postData,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<String> tags = ['#crush', '#college', '#shy'];
  String username = 'JohnDoe';
  String profilePicture = 'https://art.pixilart.com/7aed6ac0ceb9944.png';
  String postContent =
      'I secretly have a crush on my professor, but I’m too shy to say anything. 😳';
  String college = 'Sample University';
  int likes = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Ink(
                    padding: const EdgeInsets.only(bottom: 16, top: 5),
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.black12,
                        //   blurRadius: 4,
                        //   offset: Offset(0, 2),
                        // ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(profilePicture),
                              radius: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    username,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '3 hr ago',
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFDBEAFE),
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(color: Colors.transparent),
                                    ),
                                    child: Text(
                                      '🎓 $college',
                                      style: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                postContent,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: tags
                                    .map((tag) => Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey[500]!,
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            tag,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 24,
                                    color: Colors.green[600],
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    likes.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 24,
                                    color: Colors.red[600],
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Icon(
                                    Icons.bubble_chart_outlined,
                                    size: 24,
                                    color: Colors.grey[800],
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 8,
            top: 8,
            left: 8,
            right: 8),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Post a reply...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            suffixIcon: IconButton(
              icon: const Icon(Icons.send, color: Colors.blue),
              onPressed: () {
                // Handle send comment action
              },
            ),
          ),
        ),
      ),
    );
  }
}
