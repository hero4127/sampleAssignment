import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleassignment/Model/StateModel.dart';
import 'package:sampleassignment/widgets/movieTile.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    StateModel result = Provider.of<StateModel>(context);
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.search), hintText: "Search for Movies"),
            onChanged: ((value) => result.updateMovies(value.trim())),
          ),
          Consumer<StateModel>(
            builder: ((context, value, child) => Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: size.width,
                  height: size.height * 0.7,
                  child: ListView.builder(
                    itemCount: value.getMovies.search.length,
                    itemBuilder: ((context, index) {
                      return MovieTile(
                        imgUrl: value.getMovies.search[index].poster,
                        title: value.getMovies.search[index].title,
                        subtitle: value.getMovies.search[index].type,
                        imdbRating: value.getMovies.search[index].year,
                      );
                    }),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
