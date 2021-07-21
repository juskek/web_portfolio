import 'package:web_portfolio/index_main.dart';

// You can easily create your own animations by creating new classes that extend
// AnimatedText, just like most animations in this package. You will need to
// implement:

// Class constructor – Initializes animation parameters.
// initAnimation – Initializes Animation instances and binds them to the given AnimationController.
// animatedBuilder – Builder method to return a Widget based on Animation values.
// completeText – Returns the Widget to display once the animation is complete. (The default implementation returns a styled Text widget.)

// CLASS CONSTRUCTOR
class BackspaceTypewriterAnimatedText extends AnimatedText {
  // The text length is padded to cause extra cursor blinking after typing.
  static const extraLengthForBlinks = 8;

  /// The [Duration] of the delay between the apparition of each characters
  ///
  /// By default it is set to 30 milliseconds.
  final Duration speed;

  /// The [Curve] of the rate of change of animation over time.
  ///
  /// By default it is set to Curves.linear.
  final Curve curve;

  /// Cursor text. Defaults to underscore.
  final String cursor;

  BackspaceTypewriterAnimatedText(
    String text, {
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    this.speed = const Duration(milliseconds: 30),
    this.curve = Curves.linear,
    this.cursor = '_',
  }) : super(
          text: text,
          textAlign: textAlign,
          textStyle: textStyle,
          duration: speed * (text.characters.length + extraLengthForBlinks),
        );

  late Animation<double> _typewriterText;

  @override
  Duration get remaining =>
      speed *
      (textCharacters.length + extraLengthForBlinks - _typewriterText.value);

  @override
  void initAnimation(AnimationController controller) {
    _typewriterText = CurveTween(
      curve: curve,
    ).animate(controller);
  }

  @override
  Widget completeText(BuildContext context) => RichText(
        text: TextSpan(
          children: [
            // ! This was changed
            // TextSpan(text: text),
            TextSpan(text: ' '),
            TextSpan(
              text: cursor,
              style: const TextStyle(color: Colors.transparent),
            )
          ],
          style: DefaultTextStyle.of(context).style.merge(textStyle),
        ),
        textAlign: textAlign,
      );

  /// Widget showing partial text
  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    /// Output of CurveTween is in the range [0, 1] for majority of the curves.
    /// It is converted to [0, textCharacters.length + extraLengthForBlinks].
    final textLen = textCharacters.length;
    final typewriterValue = (_typewriterText.value.clamp(0, 1) *
            (textCharacters.length + extraLengthForBlinks))
        .round();

    var showCursor = true;
    var visibleString = text;
    if (typewriterValue == 0) {
      visibleString = '';
      showCursor = false;
    } else if (typewriterValue > textLen) {
      showCursor = (typewriterValue - textLen) % 2 == 0; // makes it blink
      visibleString = ''; // ! This was changed
    } else {
      // ! This was changed
      // visibleString = textCharacters.take(typewriterValue).toString();
      visibleString = textCharacters.take(textLen - typewriterValue).toString();
    }

    return RichText(
      text: TextSpan(
        children: [
          // TextSpan(text: '$typewriterValue'),
          TextSpan(text: visibleString),
          TextSpan(
            text: cursor,
            style:
                showCursor ? null : const TextStyle(color: Colors.transparent),
          )
        ],
        style: DefaultTextStyle.of(context).style.merge(textStyle),
      ),
      textAlign: textAlign,
    );
  }
}
