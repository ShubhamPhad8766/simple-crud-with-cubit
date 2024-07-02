import 'package:crud/logic/delete/delete_cubit.dart';
import 'package:crud/screen/get_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteScreen extends StatefulWidget {
  const DeleteScreen({super.key});

  @override
  State<DeleteScreen> createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {
  final TextEditingController _idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Delete"),
        ),
        body: BlocListener<DeleteCubit, DeleteState>(
          listener: (context, state) {
            if (state is DeleteSuccess) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetScreen(),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green, content: Text("Success")));
            } else if (state is DeleteError) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red, content: Text("Error")));
            }
          },
          child: BlocBuilder<DeleteCubit, DeleteState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _idController,
                      decoration: InputDecoration(
                          hintText: 'Enter Id',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<DeleteCubit>()
                              .deleteData(id: _idController.text);
                        },
                        child: const Text("Delete Data")),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
