// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// import 'package:cupk_connect/core/form.dart';
import 'package:cupk_connect/pages/Forum/forum.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polls/flutter_polls.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Polling_Saya_V extends StatefulWidget {
  const Polling_Saya_V({Key? key}) : super(key: key);

  @override
  State<Polling_Saya_V> createState() => _Polling_Saya_VState();
}

class _Polling_Saya_VState extends State<Polling_Saya_V> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: sPrimaryColor,
          child: const Icon(Icons.add, color: whiteColor),
        ),
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
                "Polling Saya",
                style: styleText(
                    sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
              ),
            ],
          ),
          actions: const [],
        ),
        body: ListView.builder(
                itemCount: 18,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
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
                              onVoted: (PollOption pollOption,
                                  int newTotalVotes) async {
                                /// Simulate HTTP request
                                await Future.delayed(
                                    const Duration(seconds: 1));

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
                  );
                })
            .animate()
            .fadeIn(duration: 1000.ms, curve: Curves.easeOutQuad)
            .slide());
  }
}
