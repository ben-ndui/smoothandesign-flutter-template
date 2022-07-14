import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoothTheme/model/smooth_search_result_model.dart';
import 'package:smoothTheme/themes/configs.dart';

class SmoothSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    //throw UnimplementedError();
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const FaIcon(FontAwesomeIcons.deleteLeft),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    //throw UnimplementedError();
    return IconButton(
        onPressed: () {},
        icon: IconButton(
          icon: FaIcon(FontAwesomeIcons.chevronLeft),
          onPressed: () {
            close(context, null);
          },
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // throw UnimplementedError();
    List<SmoothSearchResultModel> matchQuery = [];

    for (var res in SmoothConfigs().searchData()) {
      if (res.data.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(res);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        final sRes = matchQuery[index];

        return ListTile(
          title: sRes.data,
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    //throw UnimplementedError();
    List<SmoothSearchResultModel> matchQuery = [];

    for (var res in SmoothConfigs().searchData()) {
      if (res.data.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(res);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        final sRes = matchQuery[index];

        return ListTile(
          title: sRes.data,
        );
      },
    );
  }
}
