// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, unused_local_variable, unused_element, avoid_types_as_parameter_names

// import 'dart:async';

import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:cupk_connect/core/dynamic_form.dart';
// import 'package:cupk_connect/core/nav.dart';
import 'package:cupk_connect/pages/Beranda/simulasi.dart';
import 'package:cupk_connect/routes/route_names.dart';
import 'package:cupk_connect/utils/constans.dart';
// import 'package:cupk_connect/utils/dialog_helper.dart';
import 'package:floating_menu_panel/floating_menu_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

// import 'package:floating_action_bubble_custom/floating_action_bubble_custom.dart';

class Forum_V extends StatefulWidget {
  const Forum_V({Key? key}) : super(key: key);

  @override
  State<Forum_V> createState() => _Forum_VState();
}

class _Forum_VState extends State<Forum_V> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
    }

    List<Post> posts = [
      Post(
        caption: 'Ini adalah caption pertama',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      Post(
        caption: 'Ini adalah caption kedua',
        imageUrl:
            'https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740',
      ),
      // Tambahkan lebih banyak data post di sini sesuai kebutuhan Anda
    ];

    // late Animation<double> animation;
    // late AnimationController animationController;

    final pageIndexNotifier = ValueNotifier(0);

    TextEditingController captionController = TextEditingController();
    TextEditingController imageUrlController = TextEditingController(
        text:
            "https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740");

    SliverWoltModalSheetPage page2(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        forceMaxHeight: true,
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            'Buat Postingan',
            style:
                textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        stickyActionBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: Get.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                // print(captionController.text);

                setState(() {
                  posts.add(
                    Post(
                      caption: captionController.text,
                      imageUrl: imageUrlController.text,
                    ),
                  );
                });

                CherryToast.success(
                  toastPosition: Position.bottom,
                  inheritThemeColors: true,
                  title: Text(
                    'Posting berhasil',
                    style: styleText(
                        blackColor, 12, FontWeight.normal, TextDecoration.none),
                  ),
                  borderRadius: 10,
                ).show(context);

                // print(posts.length);

                Get.back();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(sPrimaryColor),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              child: Text(
                'Kirim',
                style: styleText(
                    whiteColor, 16, FontWeight.normal, TextDecoration.none),
              ),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: captionController,
                  maxLines: 10, // Jumlah baris yang ditampilkan
                  decoration: const InputDecoration(
                    // labelText: 'Caption',
                    hintText: 'Apa yang anda pikirkan ?',
                    border: OutlineInputBorder(),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.image,
                            size: 24.0,
                          ),
                          tooltip: "Image",
                        ),
                        // const Text("Image")
                      ],
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.image,
                    //     size: 24.0,
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    SliverWoltModalSheetPage page(
        BuildContext modalSheetContext, TextTheme textTheme) {
      return WoltModalSheetPage(
        forceMaxHeight: true,
        pageTitle: Padding(
          padding: const EdgeInsets.all(_pagePadding),
          child: Text(
            'Buat Polling',
            style:
                textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        trailingNavBarWidget: IconButton(
          padding: const EdgeInsets.all(_pagePadding),
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
        ),
        // stickyActionBar: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: SizedBox(
        //     width: Get.width,
        //     height: 48,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         print(captionController.text);

        //         setState(() {
        //           posts.add(
        //             Post(
        //               caption: captionController.text,
        //               imageUrl: imageUrlController.text,
        //             ),
        //           );
        //         });

        //         CherryToast.success(
        //           toastPosition: Position.bottom,
        //           inheritThemeColors: true,
        //           title: Text(
        //             'Posting berhasil',
        //             style: styleText(
        //                 blackColor, 12, FontWeight.normal, TextDecoration.none),
        //           ),
        //           borderRadius: 10,
        //         ).show(context);

        //         print(posts.length);

        //         Get.back();
        //       },
        //       style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStateProperty.all<Color>(sPrimaryColor),
        //         shape: MaterialStateProperty.all<OutlinedBorder>(
        //           const RoundedRectangleBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(10)),
        //           ),
        //         ),
        //       ),
        //       child: Text(
        //         'Kirim',
        //         style: styleText(
        //             whiteColor, 16, FontWeight.normal, TextDecoration.none),
        //       ),
        //     ),
        //   ),
        // ),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DynamicFields(),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: polls.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Map<String, dynamic> poll = polls[index];

                      final int days = DateTime(
                        poll['end_date'].year,
                        poll['end_date'].month,
                        poll['end_date'].day,
                      )
                          .difference(DateTime(
                            DateTime.now().year,
                            DateTime.now().month,
                            DateTime.now().day,
                          ))
                          .inDays;

                      bool hasVoted = poll['hasVoted'] ?? false;

                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: FlutterPolls(
                          pollId: poll['id'].toString(),
                          hasVoted: hasVoted,
                          userVotedOptionId:
                              poll['userVotedOptionId'].toString(),
                          onVoted:
                              (PollOption pollOption, int newTotalVotes) async {
                            /// Simulate HTTP request
                            await Future.delayed(const Duration(seconds: 1));

                            /// If HTTP status is success, return true else false
                            return true;
                          },
                          pollEnded: days < 0,
                          pollTitle: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              poll['question'],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          pollOptions: List<PollOption>.from(
                            poll['options'].map(
                              (option) => PollOption(
                                id: option['id'].toString(),
                                title: Text(
                                  option['title'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                votes: option['votes'],
                              ),
                            ),
                          ),
                          votedPercentageTextStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          metaWidget: Row(
                            children: [
                              const SizedBox(width: 6),
                              const Text(
                                '•',
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                days < 0 ? "ended" : "ends in $days days",
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Row(
            children: [
              Image.asset("assets/image/logo.png", height: 50),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "CONNECT",
                style: styleText(
                    sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
              ),
            ],
          ),
          actions: const [],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  Post post = posts[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.pageDetailForum);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20, // Image radius
                                      backgroundImage: NetworkImage(
                                        imageDefault,
                                      ),
                                    ),
                                    const SizedBox(width: 5.0),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'fulan',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    PopupMenuButton(
                                      icon: const Icon(Icons.more_vert,
                                          color: Colors.black),
                                      onSelected: (value) {
                                        if (value == '1') {
                                          // Edit action
                                        } else if (value == '0') {
                                          // Delete action
                                        }
                                      },
                                      itemBuilder: (BuildContext bc) {
                                        return [
                                          const PopupMenuItem(
                                            value: '1',
                                            child: Text("Edit"),
                                          ),
                                          const PopupMenuItem(
                                            value: '0',
                                            child: Text("Hapus"),
                                          ),
                                        ];
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                post.caption,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(post.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: const Column(),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [],
                              ),
                            ),
                            const SizedBox(height: 5.0),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
                  .animate()
                  .fadeIn(duration: 1000.ms, curve: Curves.easeOutQuad)
                  .slide(),
            ),
            FloatingMenuPanel(
              positionTop: 300,
              positionLeft: Get.width / 1.3,
              dockType: DockType.inside,
              panelIcon: Icons.add,
              backgroundColor: sPrimaryColor,
              onPressed: (int) {
                if (int == 0) {
                  WoltModalSheet.show<void>(
                    pageIndexNotifier: pageIndexNotifier,
                    context: context,
                    pageListBuilder: (modalSheetContext) {
                      final textTheme = Theme.of(context).textTheme;
                      return [
                        page2(modalSheetContext, textTheme),
                      ];
                    },
                    modalTypeBuilder: (context) {
                      final size = MediaQuery.of(context).size.width;
                      if (size < _pageBreakpoint) {
                        return WoltModalType.bottomSheet;
                      } else {
                        return WoltModalType.dialog;
                      }
                    },
                    onModalDismissedWithBarrierTap: () {
                      debugPrint('Closed modal sheet with barrier tap');
                      Navigator.of(context).pop();
                      pageIndexNotifier.value = 0;
                    },
                    maxDialogWidth: 560,
                    minDialogWidth: 400,
                    minPageHeight: 0.0,
                    maxPageHeight: 0.9,
                  );
                } else {
                  WoltModalSheet.show<void>(
                    pageIndexNotifier: pageIndexNotifier,
                    context: context,
                    pageListBuilder: (modalSheetContext) {
                      final textTheme = Theme.of(context).textTheme;
                      return [
                        page(modalSheetContext, textTheme),
                      ];
                    },
                    modalTypeBuilder: (context) {
                      final size = MediaQuery.of(context).size.width;
                      if (size < _pageBreakpoint) {
                        return WoltModalType.bottomSheet;
                      } else {
                        return WoltModalType.dialog;
                      }
                    },
                    onModalDismissedWithBarrierTap: () {
                      debugPrint('Closed modal sheet with barrier tap');
                      Navigator.of(context).pop();
                      pageIndexNotifier.value = 0;
                    },
                    maxDialogWidth: 560,
                    minDialogWidth: 400,
                    minPageHeight: 0.0,
                    maxPageHeight: 0.9,
                  );
                }
              },
              buttons: const [
                Icons.create,
                Icons.poll,
              ],
            )
          ],
        ));
  }
}

class Post {
  final String caption;
  final String imageUrl;

  Post({required this.caption, required this.imageUrl});
}

const double _bottomPaddingForButton = 150.0;
const double _buttonHeight = 56.0;
const double _buttonWidth = 200.0;
const double _pagePadding = 16.0;
const double _pageBreakpoint = 768.0;
const double _heroImageHeight = 250.0;
const Color _lightThemeShadowColor = Color(0xFFE4E4E4);
const Color _darkThemeShadowColor = Color(0xFF121212);
const Color _darkSabGradientColor = Color(0xFF313236);
final materialColorsInGrid = allMaterialColors.take(20).toList();
final materialColorsInSliverList = allMaterialColors.sublist(20, 25);
final materialColorsInSpinner = allMaterialColors.sublist(30, 50);

//? Please note that this is just a dummy data for the purpose of this example.
//? You can use your own data from your API or any other source.
//? This is just an example of how you can use Flutter Polls.

List polls = [
  {
    'id': 1,
    'question':
        'Is Flutter the best framework for building cross-platform applications?',
    'end_date': DateTime(2025, 11, 21),
    'options': [
      {
        'id': 1,
        'title': 'Absolutely',
        'votes': 40,
      },
      {
        'id': 2,
        'title': 'Maybe',
        'votes': 20,
      },
      {
        'id': 3,
        'title': 'Meh!',
        'votes': 10,
      },
    ],
  },
  {
    'id': 2,
    'question': 'Do you think Oranguntans have the ability speak?',
    'end_date': DateTime(2022, 12, 25),
    'options': [
      {
        'id': 1,
        'title': 'Yes, they definitely do',
        'votes': 40,
      },
      {
        'id': 2,
        'title': 'No, they do not',
        'votes': 0,
      },
      {
        'id': 3,
        'title': 'I do not know',
        'votes': 10,
      },
      {
        'id': 4,
        'title': 'Why should I care?',
        'votes': 30,
      }
    ],
  },
  {
    'id': 3,
    'question': 'What is the meaning of life?',
    'end_date': DateTime(2026, 09, 30),
    'options': [
      {
        'id': 1,
        'title': 'To love',
        'votes': 42,
      },
      {
        'id': 2,
        'title': 'To live',
        'votes': 10,
      },
      {
        'id': 3,
        'title': 'To die',
        'votes': 19,
      },
      {
        'id': 4,
        'title': 'To be happy',
        'votes': 25,
      },
    ],
  },
  {
    'id': 4,
    'question':
        'How do you know that your experience of consciousness is the same as other people’s experience of consciousness?',
    'end_date': DateTime(2025, 04, 30),
    'options': [
      {
        'id': 1,
        'title': 'It is certain that it is the same',
        'votes': 1,
      },
      {
        'id': 2,
        'title': 'How am I supposed to know?',
        'votes': 0,
      },
    ],
    'hasVoted': true,
    'userVotedOptionId': 1,
  }
];
