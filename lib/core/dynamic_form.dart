import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class DynamicFields extends StatefulWidget {
  const DynamicFields({Key? key}) : super(key: key);

  @override
  State<DynamicFields> createState() => _DynamicFieldsState();
}

class _DynamicFieldsState extends State<DynamicFields> {
  final _formKey = GlobalKey<FormBuilderState>();
  final List<Widget> fields = [];
  String savedValue = '';

  @override
  void initState() {
    savedValue = _formKey.currentState?.value.toString() ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      // IMPORTANT to remove all references from dynamic field when delete
      clearValueOnUnregister: true,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          FormBuilderTextField(
            name: 'name',
            validator: FormBuilderValidators.required(),
            decoration: const InputDecoration(
              label: Text('Pertanyaan'),
            ),
          ),
          ...fields,
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  width: Get.width,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.saveAndValidate();
                      setState(() {
                        savedValue =
                            _formKey.currentState?.value.toString() ?? '';
                      });

                      CherryToast.success(
                        toastPosition: Position.bottom,
                        inheritThemeColors: true,
                        title: Text(
                          'Posting berhasil',
                          style: styleText(blackColor, 12, FontWeight.normal,
                              TextDecoration.none),
                        ),
                        borderRadius: 10,
                      ).show(context);
                      Get.back();
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(sPrimaryColor),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Kirim',
                      style: styleText(whiteColor, 16, FontWeight.normal,
                          TextDecoration.none),
                    ),
                  ),
                ),

                // MaterialButton(
                //   color: Theme.of(context).colorScheme.secondary,
                //   child: const Text(
                //     "Submit",
                //     style: TextStyle(color: Colors.white),
                //   ),
                //   onPressed: () {

                //   },
                // ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: SizedBox(
                  width: Get.width,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fields.add(NewTextField(
                          name: 'name_${fields.length}',
                          onDelete: () {
                            setState(() {
                              fields.removeAt(fields.length - 1);
                            });
                          },
                        ));
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(sPrimaryColor),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: Text(
                      'Tambah',
                      style: styleText(whiteColor, 16, FontWeight.normal,
                          TextDecoration.none),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 40),
          Text('Saved value: $savedValue'),
        ],
      ),
    );
  }
}

class NewTextField extends StatelessWidget {
  const NewTextField({
    super.key,
    required this.name,
    this.onDelete,
  });
  final String name;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: FormBuilderTextField(
              name: name,
              validator: FormBuilderValidators.minLength(4),
              decoration: const InputDecoration(
                label: Text('Pilihan'),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
