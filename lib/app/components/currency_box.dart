import 'package:currency_conversion/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CustomizedDropdownButton extends StatefulWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel? model) onChanged;
  final CurrencyModel selectedItem;

  const CustomizedDropdownButton({super.key, required this.items, required this.controller, required this.onChanged, required this.selectedItem});


  @override
  State<CustomizedDropdownButton> createState() =>
      CustomizedDropdownButtonState();
}

class CustomizedDropdownButtonState extends State<CustomizedDropdownButton> {


  CustomizedDropdownButtonState();


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                iconEnabledColor: Colors.amber,
                value: widget.selectedItem,
                items: widget.items.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value.name),
                  );
                }).toList(),
                onChanged: widget.onChanged,
                // onChanged: (value) {
                //   setState(() {
                //     _selectedValue = value;
                //   });
                // },
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber.shade100,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
