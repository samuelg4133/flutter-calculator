import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ToggleSwitch({super.key, required this.value, required this.onChanged});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.value,
      onChanged: widget.onChanged,
      activeTrackColor: const Color(0xFFF1F2F3),
      activeColor: const Color(0xFFD2D3DA),
      trackOutlineWidth: MaterialStateProperty.resolveWith((Set states) {
        return 0.0;
      }),
      inactiveThumbColor: const Color(0xFF4E505F),
      inactiveTrackColor: const Color(0xFF2E2F38),
    );
  }
}
