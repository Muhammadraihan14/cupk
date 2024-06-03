// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forumdetail_V extends StatefulWidget {
  const Forumdetail_V({Key? key}) : super(key: key);

  @override
  State<Forumdetail_V> createState() => _Forumdetail_VState();
}

class _Forumdetail_VState extends State<Forumdetail_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                color: whiteColor,
                Icons.arrow_back,
                size: 24.0,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Detail Posting",
              style: styleText(
                  sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
            ),
          ],
        ),
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            // height: 410,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        CircleAvatar(
                          radius: 20, // Image radius
                          backgroundImage: NetworkImage(imageDefault),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("fulan",
                                style: styleText(blackColor, 14,
                                    FontWeight.bold, TextDecoration.none)),
                            // Text(
                            //     DateTimeHelper
                            //         .timeHelper(
                            //             time: cls
                            //                 .createdAt),
                            //     style: styleText(
                            //         blackColor,
                            //         12,
                            //         FontWeight.w100,
                            //         TextDecoration
                            //             .none)),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        PopupMenuButton(
                          icon: const Icon(Icons.more_vert, color: blackColor),
                          onSelected: (value) {
                            if (value == '1') {
                            } else {}
                          },
                          itemBuilder: (BuildContext bc) {
                            return const [
                              PopupMenuItem(
                                value: '1',
                                child: Text("Edit"),
                              ),
                              PopupMenuItem(
                                value: '0',
                                child: Text("Hapus"),
                              ),
                            ];
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: Get.width,
                  // height: 50,
                  child: Text(
                      style: styleText(blackColor, 12, FontWeight.normal,
                          TextDecoration.none),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      "ini caption"),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                    width: Get.width,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://img.freepik.com/premium-photo/beautiful-sunset-lake-with-clouds-reflections-water_210632-232.jpg?w=740",
                            ),
                            fit: BoxFit.cover)),
                    child: const Column()),
                const SizedBox(
                  height: 25.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20, // Image radius
                        backgroundImage: NetworkImage(imageDefault),
                      ),
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Fulan",
                            style: styleText(blackColor, 15, FontWeight.bold,
                                TextDecoration.none),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "14 minutes ago",
                            style: styleText(blackColor, 12, FontWeight.normal,
                                TextDecoration.none),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        "ini komentar",
                        style: styleText(blackColor, 15, FontWeight.normal,
                            TextDecoration.none),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
