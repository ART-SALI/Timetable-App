import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/cubit/theme_cubit.dart';
import 'package:project_7/for_http/fetch_album.dart';

class TimetableAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const TimetableAppBar({
    super.key,
    required this.futureAlbum,
  });

  final Future<Album> futureAlbum;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          width: 50,
          child: TextButton(
            child: Icon(
              Icons.refresh,
              color: Theme.of(context).colorScheme.background,
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: SizedBox(
            child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
        Container(
          width: 150,
          child: BlocBuilder<ThemeCubit, bool>(
            builder: (context, value) {
              return SwitchListTile(
                activeColor: Theme.of(context).colorScheme.background,
                value: value,
                onChanged: (value) {
                  BlocProvider.of<ThemeCubit>(context)
                      .toggleTheme(value: value);
                },
              );
            },
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 60);
}