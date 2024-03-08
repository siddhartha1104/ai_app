import 'package:flutter/material.dart';

enum HomeType { aiChatBot, aiImage, aiTranslator }

extension MyHomeType on HomeType {
  //title
  String get title => switch (this) {
        HomeType.aiChatBot => '    ChatBot',
        HomeType.aiImage => 'Image Generator',
        HomeType.aiTranslator => '  Language Translator',
      };

  // Lottie
  String get lottie => switch (this) {
        HomeType.aiChatBot => 'chat.json',
        HomeType.aiImage => 'image_generator.json',
        HomeType.aiTranslator => 'language_translation.json',
      };

  //for lottie alignment on the left side or not
  bool get leftAlign => switch (this) {
        HomeType.aiChatBot => true,
        HomeType.aiImage => false,
        HomeType.aiTranslator => true,
      };

  // //for padding lottie animation
  // EdgeInsets get padding => switch (this) {
  //       HomeType.aiChatBot => EdgeInsets.zero,
  //       HomeType.aiImage => EdgeInsets.zero,
  //       HomeType.aiTranslator => const EdgeInsets.all(20),
  //     };
}
