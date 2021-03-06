import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/search_field.dart';
// ignore: unused_import
import 'package:netflix_clone/presentation/pages/search/widgets/search_idle.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/search_results.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
              SearchField(),
              //Expanded(child: IdleSearchWidget()),
              Expanded(child: SearchResultsWidget()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
