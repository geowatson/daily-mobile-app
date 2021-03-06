import 'package:daily_mobile_app/src/api/api_client_impl.dart';
import 'package:daily_mobile_app/src/data/repository/tag_rest_rep_impl.dart';
import 'package:daily_mobile_app/src/data/repository/tag_storage_rep_impl.dart';
import 'package:daily_mobile_app/src/data/service/tag/tag_service.dart';
import 'package:daily_mobile_app/src/ui/tags/tags_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'src/ui/app_theme.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          Inject<TagService>(
            () => TagService(
              TagRestRepositoryImpl(ApiClientImpl()),
              TagStorageRepositoryImpl(),
            )
          )
        ],
        builder: (_) => MaterialApp(
              title: 'Daily',
              theme: appTheme(),
              routes: {Routes.tags: (context) => TagsPage()},
            ));
  }
}

class Routes {
  static final tags = '/';
}
