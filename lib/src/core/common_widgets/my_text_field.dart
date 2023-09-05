import 'package:flutter/material.dart';

import '../utils/validators/validators.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.hint,
      this.inputType,
      this.icon,
      this.inputAction,
      this.inputControl,
      this.validator,
      this.focusNode,
      this.autofillHints,
      this.onFieldSubmitted});
  final String hint;
  final IconData? icon;
  final TextInputAction? inputAction;
  final TextInputType? inputType;
  final TextEditingController? inputControl;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Iterable<String>? autofillHints;
  final void Function(String)? onFieldSubmitted;
  void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => unfocus(context),
      textInputAction: inputAction,
      validator: validator,
      controller: inputControl,
      focusNode: focusNode,
      obscuringCharacter: '*',
      obscureText: (validator == passValidate),
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          labelText: hint,
          floatingLabelStyle: MaterialStateTextStyle.resolveWith(
            (Set<MaterialState> states) {
              Color? color = states.contains(MaterialState.error)
                  ? Theme.of(context).colorScheme.error
                  : (!states.contains(MaterialState.focused))
                      ? Colors.grey
                      : null;
              return TextStyle(color: color, letterSpacing: 1.3);
            },
          ),
          labelStyle: MaterialStateTextStyle.resolveWith(
            (Set<MaterialState> states) {
              Color? color = states.contains(MaterialState.error)
                  ? Theme.of(context).colorScheme.error
                  : (!states.contains(MaterialState.focused))
                      ? Colors.grey
                      : null;
              return TextStyle(color: color, letterSpacing: 1.3);
            },
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
      keyboardType: inputType,
      textCapitalization: (validator == nameValidate)
          ? TextCapitalization.words
          : TextCapitalization.none,
      autofillHints: autofillHints,
      onFieldSubmitted: (value) {
        FocusScope.of(context).unfocus();
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
    );
  }
}
