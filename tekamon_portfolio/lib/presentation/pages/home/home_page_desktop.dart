import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:tekamon_portfolio/core/layout/adaptive.dart';
import 'package:tekamon_portfolio/core/utils/functions.dart';
import 'package:tekamon_portfolio/presentation/pages/home/home_page.dart';
import 'package:tekamon_portfolio/presentation/pages/portfolio/portfolio_page.dart';
import 'package:tekamon_portfolio/presentation/widgets/circular_container.dart';
import 'package:tekamon_portfolio/presentation/widgets/content_wrapper.dart';
import 'package:tekamon_portfolio/presentation/widgets/menu_list.dart';
import 'package:tekamon_portfolio/presentation/widgets/spaces.dart';
import 'package:tekamon_portfolio/presentation/widgets/trailing_info.dart';
import 'package:tekamon_portfolio/values/values.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  Future<ui.Image> _getImage() {
    Completer<ui.Image> completer = Completer<ui.Image>();
    const AssetImage(ImagePath.DEV)
        .resolve(const ImageConfiguration())
        .addListener(
      ImageStreamListener(
        (ImageInfo image, bool _) {
          completer.complete(image.image);
        },
      ),
    );
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfImage = assignWidth(context: context, fraction: 0.4);

    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ContentWrapper(
                  width: assignWidth(context: context, fraction: 0.5),
                  color: AppColors.primaryColor,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: Sizes.MARGIN_20,
                      top: Sizes.MARGIN_20,
                      bottom: Sizes.MARGIN_20,
                    ),
                    child: MenuList(
                      menuList: Data.menuList,
                      selectedItemRouteName: HomePage.homePageRoute,
                    ),
                  ),
                ),
                ContentWrapper(
                  width: assignWidth(context: context, fraction: 0.5),
                  color: AppColors.secondaryColor,
                  child: TrailingInfo(
                    onLeadingWidgetPressed: () {
                      Functions.launchUrl(StringConst.EMAIL_URL);
                    },
                    leadingWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          StringConst.SEND_ME_A_MESSAGE,
                          style: theme.textTheme.bodyText1!.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SpaceW8(),
                        CircularContainer(
                          width: Sizes.WIDTH_24,
                          height: Sizes.HEIGHT_24,
                          color: AppColors.primaryColor,
                          child: const Icon(
                            Icons.add,
                            color: AppColors.secondaryColor,
                            size: Sizes.ICON_SIZE_20,
                          ),
                        )
                      ],
                    ),
                    onTrailingWidgetPressed: () {
                      Navigator.pushNamed(
                        context,
                        PortfolioPage.portfolioPageRoute,
                      );
                    },
                    trailingWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          StringConst.VIEW_PORTFOLIO,
                          style: theme.textTheme.bodyText1!.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SpaceW8(),
                        CircularContainer(
                          color: AppColors.primaryColor,
                          width: Sizes.WIDTH_24,
                          height: Sizes.HEIGHT_24,
                          child: const Icon(
                            Icons.chevron_right,
                            color: AppColors.secondaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        isDisplaySmallDesktop(context)
            ? FutureBuilder<ui.Image>(
                future: _getImage(),
                builder:
                    (BuildContext context, AsyncSnapshot<ui.Image> snapshot) {
                  if (snapshot.hasData) {
                    ui.Image image = snapshot.data!;
                    return Positioned(
                      top: assignHeight(context: context, fraction: 0.0),
                      left: assignWidth(context: context, fraction: 0.5) -
                          (image.width + 100.0) / 2,
                      child: Image.asset(
                        ImagePath.DEV,
                        width: (image.width + 100.0),
                        height: assignHeight(context: context, fraction: 1.0),
                        fit: BoxFit.cover,
                        scale: 1.0,
                      ),
                    );
                  } else {
                    return const Text('Loading...');
                  }
                },
              )
            : Positioned(
                top: assignHeight(context: context, fraction: 0.05),
                left: assignWidth(context: context, fraction: 0.5) -
                    widthOfImage / 2,
                child: Image.asset(
                  ImagePath.DEV,
                  width: widthOfImage,
                  height: assignHeight(context: context, fraction: 1),
                  fit: BoxFit.cover,
                  scale: 2.0,
                ),
              ),
      ],
    );
  }
}
