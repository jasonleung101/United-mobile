import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_manager_mobile/utils/appUtils.dart';
import 'package:password_manager_mobile/utils/theme.dart';

class AppTextFormField extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final String labelText;
  final TextStyle labelStyle;
  final String hintText;
  final TextStyle hintStyle;
  final TextEditingController textController;
  final FocusNode focusNode;
  final String prefixText;
  final String errorText;
  final Widget prefixIcon;
  final FormFieldValidator<String> validator;
  final AutovalidateMode autovalidateMode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String> onFieldSubmitted;
  final ValueChanged<String> onChanged;
  final bool readonly;
  final bool obscureText;
  final bool enableInteractiveSelection;

  const AppTextFormField(
      {Key key,
      this.formKey,
      this.labelText,
      this.labelStyle,
      this.hintText,
      this.hintStyle,
      this.textController,
      this.focusNode,
      this.prefixText,
      this.errorText,
      this.prefixIcon,
      this.validator,
      this.autovalidateMode = AutovalidateMode.always,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.onFieldSubmitted,
      this.onChanged,
      this.readonly = false,
      this.enableInteractiveSelection = true,
      this.obscureText = false})
      : super(key: key);

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText == null
            ? SizedBox()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.labelText ?? '',
                  style: widget.labelStyle == null
                      ? AppUtils.textTheme.bodyText2
                      : widget.labelStyle,
                  textAlign: TextAlign.left,
                ),
              ),
        SizedBox(
          height: AppUtils.screenHeight * 0.01,
        ),
        TextField(
          controller: widget.textController,
          focusNode: widget.focusNode,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              prefixText: widget.prefixText,
              errorText: widget.errorText,
              hintStyle: TextStyle(
                  fontSize: ScreenUtil().setSp(36, allowFontScalingSelf: false),
                  color: AppTheme.white)),
          obscureText: widget.obscureText,
          readOnly: widget.readonly,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          onChanged: (text) {
            widget.onChanged(text);
          },
        ),
      ],
    );
  }
}
