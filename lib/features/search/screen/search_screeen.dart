import 'package:datingapp/common/widgets/widgets.dart';
import 'package:datingapp/features/matches/widgets/user_tile.dart';
import 'package:datingapp/features/profile/screen/general_profile.dart';
import 'package:datingapp/features/search/controller/search_controller.dart';
import 'package:datingapp/models/user_model.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchBarController searchBarController = Get.put(SearchBarController());
  final stt.SpeechToText _speech = stt.SpeechToText();

  void _initializeSpeech() async {
    await _speech.initialize();
  }

  void _startListening() async {
    if (_speech.isAvailable) {
      await _speech.listen(
        onResult: (result) {
          if (result.finalResult) {
            setState(() {
              searchBarController.searchBarTextEditingController.text =
                  result.recognizedWords;
            });
            _runFilter(result.recognizedWords);
          }
        },
      );
    }
  }

  @override
  void initState() {
    _initializeSpeech();
    super.initState();
  }

  void _runFilter(String searchText) {
    List<User> filteredList = [];
    if (searchText.isNotEmpty) {
      filteredList = searchBarController.userList!
          .where((user) =>
              user.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    } else {
      filteredList = searchBarController.userList!;
    }
    setState(() {
      searchBarController.filteredUserList!.value = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'searchBarTag',
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller:
                            searchBarController.searchBarTextEditingController,
                        onChanged: (value) => _runFilter(value),
                        style: const TextStyle(color: Colors.white),
                        autofocus: false,
                        decoration: const InputDecoration(
                          hintText: 'Search here...',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const VerticalDivider(),
                    IconButton(
                      onPressed: () {
                        _startListening();
                      },
                      color: Colors.white,
                      icon: const Icon(Icons.keyboard_voice_outlined),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        // ignore: unnecessary_null_comparison
        return searchBarController.isLoading.value
            ? const Center(child: Text('Search for your perfect match'))
            : searchBarController.userList == null
                ? const Center(
                    child: Text('Error Fetching User'),
                  )
                : searchBarController.userList!.isEmpty
                    ? const Center(child: Text('No User Found'))
                    : searchBarController
                            .searchBarTextEditingController.text.isNotEmpty
                        ? searchBarController.filteredUserList!.isEmpty
                            ? Center(
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search_sharp,
                                    size:
                                        MediaQuery.of(context).size.height * .2,
                                    color: Colors.grey.shade300,
                                  ),
                                  Text(
                                    'User Not Found',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .03),
                                  ),
                                  Text(
                                    'Try searching the user with different keywords!',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02,
                                        overflow: TextOverflow.clip),
                                  ),
                                ],
                              ))
                            : Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: searchBarController
                                        .filteredUserList!.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          nextScreen(
                                              context,
                                              GeneralProfile(
                                                  user: searchBarController
                                                          .filteredUserList![
                                                      index]));
                                        },
                                        child: UserTile(
                                            user: searchBarController
                                                .filteredUserList![index],
                                            index: index),
                                      );
                                    }))
                        : Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: searchBarController.userList!.length,
                              itemBuilder: (context, index) {
                                return UserTile(
                                    user: searchBarController.userList![index],
                                    index: index);
                              },
                            ),
                          );
      }),
    );
  }
}
