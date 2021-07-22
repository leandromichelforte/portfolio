import 'package:portfolio/models/constants.model.dart';

class TextsViewModels {
  ConstantsModel constants = ConstantsModel();
  bool englishLang = false;

  String get name {
    return englishLang
        ? constants.kEnDataInfo['name']!
        : constants.kBrDataInfo['name']!;
  }

  String get role {
    return constants.kRole;
  }

  String get description {
    return constants.kDescription;
  }
}
