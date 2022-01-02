import 'package:flutter/material.dart';
import 'package:stacked_ui/src/shared/styles.dart';
import 'package:stacked_ui/stacked_ui.dart';

class StackedButton extends StatelessWidget {
  final String title;
  final Widget? leading;
  final bool busy;
  final bool disabled;
  final bool outline;
  final void Function()? onTap;

  const StackedButton({
    Key? key,
    required this.title,
    @required this.onTap,
    this.leading,
    this.disabled = false,
    this.busy = false,
  })  : outline = false,
        super(key: key);

  const StackedButton.outline({
    Key? key,
    required this.title,
    this.onTap,
    this.leading,
  })  : disabled = false,
        busy = false,
        outline = true,
        super(key: key);

  // Annoying but will do for now.
  //TODO: Clean up colour config
  Color configureColor(bool disabled, bool outline) {
    if (disabled) {
      return kcMediumGrey;
    } else if (!disabled && outline) {
      return Colors.transparent;
    } else if (!disabled && !outline) {
      return kcPrimaryColour;
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: configureColor(disabled, outline),
      borderRadius: BorderRadius.circular(8.0),
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          width: double.infinity,
          height: 48,
          alignment: Alignment.center,
          decoration: !outline
              ? BoxDecoration(
                  color: !disabled ? Colors.transparent : kcMediumGrey,
                  borderRadius: BorderRadius.circular(8.0),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: kcPrimaryColour,
                    width: 1.0,
                  )),
          child: !busy
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (leading != null) leading!,
                    if (leading != null) verticalSpaceTiny,
                    Text(
                      title,
                      style: bodyStyle.copyWith(
                          fontWeight:
                              !outline ? FontWeight.w600 : FontWeight.w400,
                          color: !outline ? Colors.white : kcPrimaryColour),
                    )
                  ],
                )
              : const CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
        ),
      ),
    );
  }
}
