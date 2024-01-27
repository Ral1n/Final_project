import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/get_reviews.dart';
import '../actions/load_photos.dart';
import '../actions/set_color.dart';
import '../actions/set_query.dart';
import '../actions/set_selected_photo.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import 'containers/app_user_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/photos_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.dispatch(const LoadPhotos());
    controller.addListener(_onScroll);
  }

  void _onScroll() {
    final double offset = controller.offset;
    final double maxExtent = controller.position.maxScrollExtent;

    if (!context.state.isLoading && offset > maxExtent * 0.8) {
      context.dispatch(const LoadPhotos());
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PhotosContainer(builder: (BuildContext context, List<Photo> photos) {
      return IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return RefreshIndicator(
            onRefresh: () async {
              textController.clear();
              context
                ..dispatch(const SetQuery('nature'))
                ..dispatch(const SetColor(''))
                ..dispatch(const LoadPhotos());
              await context.store.onChange.firstWhere((AppState state) => !state.isLoading);
            },
            child: AppUserContainer(
              builder: (BuildContext context, AppUser? user) {
                return Scaffold(
                  backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
                  appBar: AppBar(
                    title: const Text(
                      'List Photos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.white12,
                    actions: <Widget>[
                      if (user != null)
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          child: const UserPicture(),
                        )
                    ],
                  ),
                  body: Column(
                    children: <Widget>[
                      Expanded(
                        child: CustomScrollView(
                          controller: controller,
                          slivers: <Widget>[
                            SliverToBoxAdapter(
                              child: TextField(
                                controller: textController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Search',
                                ),
                                onChanged: (String value) {
                                  if (value.isEmpty) {
                                    context.dispatch(const SetQuery('nature'));
                                  } else if (value == 'black_and_white' ||
                                      value == 'black' ||
                                      value == 'white' ||
                                      value == 'yellow' ||
                                      value == 'orange' ||
                                      value == 'red' ||
                                      value == 'purple' ||
                                      value == 'magenta' ||
                                      value == 'green' ||
                                      value == 'teal' ||
                                      value == 'blue') {
                                    context.dispatch(SetColor(value));
                                  } else {
                                    context.dispatch(SetQuery(value));
                                  }
                                  context.dispatch(const LoadPhotos());
                                },
                              ),
                            ),
                            if (!isLoading && photos.isEmpty)
                              const SliverToBoxAdapter(
                                child: Center(
                                  child: Text('No photos found.'),
                                ),
                              ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                                final Photo photo = photos[index];
                                return GestureDetector(
                                  onTap: () {
                                    if (user != null) {
                                      context
                                        ..dispatch(SetSelectedPhoto(photo))
                                        ..dispatch(GetReviews(photo.id));
                                      Navigator.pushNamed(context, '/photo');
                                    } else {
                                      Navigator.pushNamed(context, '/createUser');
                                    }
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      const SizedBox(height: 20),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0),
                                            color: const Color.fromRGBO(225, 225, 225, 1)),
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    child: Image.network(photo.urls.regular))),
                                            //Expanded(child: Text(photo.id)),
                                            const SizedBox(width: 20),
                                            Expanded(
                                              child: Column(
                                                children: <Widget>[
                                                  RichText(
                                                    text: TextSpan(
                                                      children: <InlineSpan>[
                                                        const TextSpan(
                                                          text: 'Description: ',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: photo.description,
                                                          style: const TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: <InlineSpan>[
                                                        const TextSpan(
                                                          text: 'By: ',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              '${photo.user.realName} ( Instagram: ${photo.user.instagram} or Twitter: ${photo.user.twitter} )',
                                                          style: const TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }, childCount: photos.length),
                            ),
                            if (isLoading)
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding: MediaQuery.paddingOf(context),
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      );
    });
  }
}
