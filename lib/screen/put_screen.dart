import 'package:crud/logic/put/put_cubit.dart';
import 'package:crud/screen/get_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PutScreen extends StatefulWidget {
  const PutScreen({super.key});

  @override
  State<PutScreen> createState() => _PutScreenState();
}

class _PutScreenState extends State<PutScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<PutCubit, PutState>(
          listener: (context, state) {
            if (state is PutSuccess) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetScreen(),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green, content: Text("Success")));
            } else if (state is PutError) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red, content: Text("Error")));
            }
          },
          child: BlocBuilder<PutCubit, PutState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
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
                    TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            hintText: 'Enter Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<PutCubit>()
                              .putData(id: _idController.text);
                        },
                        child: const Text("Update Data")),
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
