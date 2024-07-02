import 'package:crud/logic/post/post_cubit.dart';
import 'package:crud/screen/get_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Post"),
        ),
        body: BlocListener<PostCubit, PostState>(
          listener: (context, state) {
            if (state is PostSuccess) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetScreen(),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green, content: Text("Success")));
            } else if (state is PostError) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red, content: Text("Error")));
            }
          },
          child: BlocBuilder<PostCubit, PostState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter NUMBER';
                          } else {
                            return null;
                          }
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10)
                        ],
                        controller: phoneNumberController,
                        decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<PostCubit>().postData(
                                  phoneNumber: phoneNumberController.text,
                                  groupId: 1703228300417);
                            }
                          },
                          child: const Text('Send Otp'))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
