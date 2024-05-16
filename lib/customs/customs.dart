import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textController,
    required this.textLabel,
    this.isHide = false,
    this.suffixIcon,
    this.validator,
    this.isnumber = false,
  });

  final TextEditingController textController;
  final bool isHide;
  final bool isnumber;
  final String textLabel;
  final IconData? suffixIcon;
  final String? Function(String? n)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: !isnumber ? TextInputType.name : TextInputType.number,
        controller: textController,
        obscureText: isHide,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: Icon(suffixIcon),
          label: Text(textLabel),
        ),
        validator: validator,
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.label,
    this.size = 16,
    this.isBold = false,
    this.isSoftWrap = false,
    this.textcolor = const Color(0xFF0f305e),
  });

  final String label;
  final double size;
  final bool isBold;
  final bool isSoftWrap;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      softWrap: isSoftWrap,
      style: TextStyle(
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: textcolor,
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonLabel,
    this.buttonTextColor = Colors.white,
    this.action,
  });

  final String buttonLabel;
  final Color? buttonTextColor;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          maximumSize: const Size(400, 65),
          minimumSize: const Size(400, 65),
          backgroundColor: const Color(0xFFd60812),
        ),
        child: CustomText(
          label: buttonLabel,
          textcolor: buttonTextColor,
          isBold: true,
        ),
      ),
    );
  }
}

// Custom text fields
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    required this.textLabel,
    this.isHide = false,
    this.float = true,
    this.suffixIcon,
    this.hintText,
  });

  final TextEditingController textController;
  final bool isHide;
  final String textLabel;
  final IconData? suffixIcon;
  final bool float;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: textController,
        obscureText: isHide,
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelBehavior:
              float ? FloatingLabelBehavior.auto : FloatingLabelBehavior.never,
          hintStyle: TextStyle(color: Colors.grey),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: Icon(suffixIcon),
          label: Text(textLabel),
        ),
      ),
    );
  }
}

class WaiterLoading extends StatefulWidget {
  const WaiterLoading({super.key});

  @override
  State<WaiterLoading> createState() => _WaiterLoadingState();
}

class _WaiterLoadingState extends State<WaiterLoading> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
