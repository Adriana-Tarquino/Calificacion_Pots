
import 'package:examen_1/Cubit/post_cubit.dart';
import 'package:examen_1/bloc/pots_State.dart';
import 'package:examen_1/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsBloc extends StatelessWidget {
  const PostsBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Posts'),),

      body: BlocProvider(
        create: (_) => PostCubit()..fetchPosts(),
        child: BlocBuilder<PostCubit, List<Post>>(
          builder: (context, state) {
            if(state is StringNew){
              return state.isNotEmpty
                ? ListView.builder(
                    itemCount: state.data,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state[index].title),
                        subtitle: Text(state[index].body),
                      );
                    },
                  )
            
                : const Center(
                    child: CircularProgressIndicator(),
                  );
            }
            else{
              return Text('loading...');
            }
          },
        ),
      ),
    );
  }
}
