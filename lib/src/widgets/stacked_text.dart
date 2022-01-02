import 'package:flutter/material.dart';
import 'package:stacked_ui/src/shared/app_colors.dart';
import 'package:stacked_ui/src/shared/styles.dart';

class StackedText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const StackedText.headingOne(this.text, {Key? key})
      : style = heading1Style,
        super(key: key);

  const StackedText.headingTwo(this.text, {Key? key})
      : style = heading2Style,
        super(key: key);

  const StackedText.headingThree(this.text, {Key? key})
      : style = heading3Style,
        super(key: key);

  const StackedText.headline(this.text, {Key? key})
      : style = headlineStyle,
        super(key: key);

  const StackedText.subheading(this.text, {Key? key})
      : style = subheadingStyle,
        super(key: key);

  const StackedText.caption(this.text, {Key? key})
      : style = captionStyle,
        super(key: key);

  StackedText.body(this.text, {Key? key, Color color = kcMediumGrey})
      : style = bodyStyle.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
