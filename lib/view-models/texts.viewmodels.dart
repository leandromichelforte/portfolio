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
    return englishLang
        ? constants.kEnDataInfo['role']!
        : constants.kBrDataInfo['role']!;
  }

  String get description {
    return englishLang
        ? constants.kEnDataInfo['description']!
        : constants.kBrDataInfo['description']!;
  }

  String get aboutMeTitle {
    return englishLang
        ? constants.kEnDataInfo['aboutMeTitle']!
        : constants.kBrDataInfo['aboutMeTitle']!;
  }

  String get aboutMe {
    return englishLang
        ? constants.kEnDataInfo['aboutMe']!
        : constants.kBrDataInfo['aboutMe']!;
  }

  String get experienceTitle {
    return englishLang
        ? constants.kEnDataInfo['experienceTitle']!
        : constants.kBrDataInfo['experienceTitle']!;
  }

  List get experience {
    return englishLang
        ? constants.kEnDataInfo['experience']!
        : constants.kBrDataInfo['experience']!;
  }
}
