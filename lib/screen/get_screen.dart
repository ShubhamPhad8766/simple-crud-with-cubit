import 'package:crud/logic/get/get_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({super.key});

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {
  @override
  void initState() {
    context.read<GetCubit>().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Get Data"),
      ),
      body: BlocBuilder<GetCubit, GetState>(
        builder: (context, state) {
          if (state is GetLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetLoaded) {
            return ListView.builder(
              itemCount: state.getModel?.data?.items?.length,
              itemBuilder: (context, index) {
                final data = state.getModel?.data?.items?[0];
                return Card(
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data!.name.toString()),
                        Text(data.type.toString()),
                        Text(data.source.toString()),
                        Text(data.location.toString()),
                        Text(data.phoneNumber.toString()),
                        Text(data.location.toString()),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state is GetError) {
            return Center(
              child: Text(state.errorMessage ?? ''),
            );
          }
          return Container();
        },
      ),
    );
  }
}
