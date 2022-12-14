part of 'values.dart';

class MenuData {
  MenuData({
    required this.title,
    required this.routeName,
  });

  final String title;
  final String routeName;
}

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class ProjectDetails {
  ProjectDetails({
    required this.projectImage,
    required this.projectName,
    required this.projectDescription,
    this.technologyUsed,
    this.isPublic,
    this.isLive,
    this.isOnPlayStore,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectImage;
  final String projectName;
  final String projectDescription;
  final bool? isPublic;
  final bool? isOnPlayStore;
  final bool? isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class PortfolioData {
  PortfolioData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.subtitle,
    required this.portfolioDescription,
    this.technologyUsed,
    this.isPublic = false,
    this.isOnPlayStore = false,
    this.isLive = false,
    this.gitHubUrl = "",
    this.hasBeenReleased = true,
    this.playStoreUrl = "",
    this.webUrl = "",
  });

  final String image;
  final String portfolioDescription;
  final double imageSize;
  final String title;
  final String subtitle;
  final bool isPublic;
  final bool hasBeenReleased;
  final String gitHubUrl;
  final bool isOnPlayStore;
  final String playStoreUrl;
  final bool isLive;
  final String webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    this.company,
    this.companyUrl,
  });

  final String? company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<MenuData> menuList = [
    MenuData(title: StringConst.HOME, routeName: HomePage.homePageRoute),
    MenuData(title: StringConst.ABOUT_ME, routeName: AboutPage.aboutPageRoute),
    MenuData(
      title: StringConst.PORTFOLIO,
      routeName: PortfolioPage.portfolioPageRoute,
    ),
    MenuData(
      title: StringConst.EXPERIENCE,
      routeName: ExperiencePage.experiencePageRoute,
    ),
    MenuData(title: StringConst.RESUME, routeName: StringConst.RESUME),
    MenuData(
      title: StringConst.CERTIFICATIONS,
      routeName: CertificationPage.certificationPageRoute,
    ),
  ];

  // Icons Skill
  static List<SkillData> skillData = [
    SkillData(skillLevel: 80, skillName: StringConst.FLUTTER),
    SkillData(skillLevel: 70, skillName: StringConst.PYTHON),
    SkillData(skillLevel: 60, skillName: StringConst.AWS),
    SkillData(skillLevel: 55, skillName: StringConst.AZURE),
    SkillData(skillLevel: 55, skillName: StringConst.GIT),
    SkillData(skillLevel: 55, skillName: StringConst.JAVASCRIPT),
    SkillData(skillLevel: 35, skillName: StringConst.DOCKER),
    SkillData(skillLevel: 30, skillName: StringConst.REACT),
    SkillData(skillLevel: 25, skillName: StringConst.REACT_NATIVE),
    SkillData(skillLevel: 25, skillName: StringConst.VUE),
    SkillData(skillLevel: 25, skillName: StringConst.LATEX),
  ];

  static List<SubMenuData> subMenuData = [
    SubMenuData(
      title: StringConst.KEY_SKILLS,
      isSelected: true,
      isAnimation: true,
      skillData: skillData,
    ),
    SubMenuData(
      title: StringConst.EDUCATION,
      isSelected: false,
      content: StringConst.EDUCATION_TEXT,
    ),
  ];
  static List<PortfolioData> portfolioData = [
    // PortfolioData(
    //   title: StringConst.ONBOARDING_APP,
    //   subtitle: StringConst.ONBOARDING_APP_SUBTITLE,
    //   image: ImagePath.ONBOARDING_APP,
    //   portfolioDescription: StringConst.ONBOARDING_APP_DETAIL,
    //   imageSize: 0.15,
    //   isPublic: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.OTP_TEXT_FIELD,
    //   subtitle: StringConst.OTP_TEXT_FIELD_SUBTITLE,
    //   image: ImagePath.OTP_TEXT_FIELD,
    //   portfolioDescription: StringConst.OTP_TEXT_FIELD_DETAIL,
    //   imageSize: 0.15,
    //   isPublic: true,
    //   isLive: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.OTP_TEXT_FIELD_GITHUB_URL,
    //   webUrl: StringConst.OTP_TEXT_FIELD_WEB_URL,
    // ),
    PortfolioData(
      title: StringConst.LOGIN_CATALOG,
      subtitle: StringConst.LOGIN_CATALOG_SUBTITLE,
      image: ImagePath.LOGIN_CATALOG,
      portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
      imageSize: 0.3,
      isPublic: true,
      technologyUsed: StringConst.FLUTTER,
      gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    ),
    // PortfolioData(
    //   title: StringConst.FOODY_BITE,
    //   subtitle: StringConst.FOODY_BITE_SUBTITLE,
    //   image: ImagePath.FOODY_BITE,
    //   portfolioDescription: StringConst.FOODY_BITE_DETAIL,
    //   imageSize: 0.45,
    //   isPublic: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.FINOPP,
    //   subtitle: StringConst.FINOPP_SUBTITLE,
    //   image: ImagePath.FINOPP,
    //   portfolioDescription: StringConst.FINOPP_DETAIL,
    //   imageSize: 0.15,
    //   isPublic: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.FINOPP_GITHUB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.BEQUIP_LOGISTICS,
    //   subtitle: StringConst.BEQUIP_LOGISTICS_SUBTITLE,
    //   image: ImagePath.BEQUIP_LOGISTICS,
    //   portfolioDescription: StringConst.BEQUIP_LOGISTICS_DETAIL,
    //   imageSize: 0.3,
    //   isLive: true,
    //   technologyUsed: StringConst.WORDPRESS,
    //   webUrl: StringConst.BEQUIP_LOGISTICS_WEB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.tekamon_portfolio,
    //   subtitle: StringConst.tekamon_portfolio_SUBTITLE,
    //   image: ImagePath.tekamon_portfolio,
    //   portfolioDescription: StringConst.tekamon_portfolio_DETAIL,
    //   imageSize: 0.3,
    //   isPublic: true,
    //   isLive: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.tekamon_portfolio_GITHUB_URL,
    //   webUrl: StringConst.tekamon_portfolio_WEB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.LEARN_UPP,
    //   subtitle: StringConst.LEARN_UPP_SUBTITLE,
    //   image: ImagePath.LEARN_UPP,
    //   portfolioDescription: StringConst.LEARN_UPP_DETAIL,
    //   imageSize: 0.3,
    //   isPublic: true,
    //   technologyUsed: StringConst.FLUTTER,
    //   gitHubUrl: StringConst.LEARN_UPP_GITHUB_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.VYBZ,
    //   subtitle: StringConst.VYBZ_SUBTITLE,
    //   image: ImagePath.VYBZ,
    //   portfolioDescription: StringConst.VYBZ_DETAIL,
    //   imageSize: 0.15,
    //   isOnPlayStore: false,
    //   hasBeenReleased: false,
    //   technologyUsed: StringConst.FLUTTER,
    //   playStoreUrl: StringConst.VYBZ_PLAYSTORE_URL,
    // ),
    // PortfolioData(
    //   title: StringConst.COLOSSAL_TOONS,
    //   subtitle: StringConst.COLOSSAL_TOONS_SUBTITLE,
    //   image: ImagePath.COLOSSAL_TOONS,
    //   portfolioDescription: StringConst.COLOSSAL_TOONS_DETAIL,
    //   imageSize: 0.15,
    //   isOnPlayStore: false,
    //   hasBeenReleased: false,
    //   technologyUsed: StringConst.FLUTTER,
    //   playStoreUrl: StringConst.COLOSSAL_TOONS_PLAYSTORE_URL,
    // ),
  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.ASSOCIATE_ANDROID_DEV,
      url: StringConst.ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.30,
      awardedBy: StringConst.GOOGLE,
    ),
    CertificationData(
      title: StringConst.DATA_SCIENCE,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.ANDROID_BASICS,
      url: StringConst.ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    // ExperienceData(
    //   company: StringConst.COMPANY_4,
    //   position: StringConst.POSITION_4,
    //   companyUrl: StringConst.COMPANY_4_URL,
    //   roles: [
    //     StringConst.COMPANY_4_ROLE_1,
    //     StringConst.COMPANY_4_ROLE_2,
    //     StringConst.COMPANY_4_ROLE_3,
    //     StringConst.COMPANY_4_ROLE_4,
    //   ],
    //   location: StringConst.LOCATION_4,
    //   duration: StringConst.DURATION_4,
    // ),
    // ExperienceData(
    //   company: StringConst.COMPANY_3,
    //   position: StringConst.POSITION_3,
    //   companyUrl: StringConst.COMPANY_3_URL,
    //   roles: [
    //     StringConst.COMPANY_3_ROLE_1,
    //     StringConst.COMPANY_3_ROLE_2,
    //     StringConst.COMPANY_3_ROLE_3,
    //     StringConst.COMPANY_3_ROLE_4,
    //   ],
    //   location: StringConst.LOCATION_3,
    //   duration: StringConst.DURATION_3,
    // ),
    ExperienceData(
      company: StringConst.COMPANY_1,
      position: StringConst.POSITION_1,
      companyUrl: StringConst.COMPANY_1_URL,
      roles: [
        StringConst.COMPANY_1_ROLE_1,
        StringConst.COMPANY_1_ROLE_2,
        StringConst.COMPANY_1_ROLE_3,
        StringConst.COMPANY_1_ROLE_4,
        StringConst.COMPANY_1_ROLE_5,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      companyUrl: StringConst.COMPANY_2_URL,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
  ];
}
