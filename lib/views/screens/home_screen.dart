import 'package:plastic_factory/constants/app_imports.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.appDarkGray,
        body: Row(
          children: [
            Container(
              height: double.infinity,
              width: 280.w,
              decoration: const BoxDecoration(
                color: AppColors.appDarkGray,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.helloAmrArabicText,
                      style: AppFonts.fontHeavy30Black.copyWith(
                        color: AppColors.appWhite,
                      ),
                    ),
                    const GapWidget(50),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.drawerItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        DrawerItemModel item = controller.drawerItems[index];
                        return InkWell(
                          onTap: () => controller.screenOnClick(index),
                          child: Obx(
                            () {
                              return AnimatedContainer(
                                duration: const Duration(
                                  milliseconds: 250,
                                ),
                                height: 75.h,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    controller.currentItem.value == index
                                        ? const BoxShadow()
                                        : BoxShadow(
                                            blurRadius: 2.sp,
                                            color: AppColors.appBlack,
                                            offset: Offset(5.sp, 5.sp),
                                          ),
                                  ],
                                  color: controller.currentItem.value == index ? AppColors.appWhite : AppColors.appLightGray,
                                  borderRadius: BorderRadius.circular(25.sp),
                                ),
                                child: Text(
                                  item.name,
                                  style: AppFonts.fontHeavy30Black,
                                ),
                              );
                            },
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        DrawerItemModel item = controller.drawerItems[index];
                        return item.num == 1
                            ? Divider(
                                color: AppColors.appLightGray,
                                thickness: 2.sp,
                                height: 50.h,
                                indent: 50.w,
                                endIndent: 50.w,
                              )
                            : const GapWidget(25);
                      },
                    ),
                    const GapWidget(25),
                    InkWell(
                      onTap: controller.exitOnClick,
                      child: Container(
                        height: 75.h,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2.sp,
                              color: AppColors.appBlack,
                              offset: Offset(5.sp, 5.sp),
                            ),
                          ],
                          color: AppColors.appRed,
                          borderRadius: BorderRadius.circular(25.sp),
                        ),
                        child: Text(
                          AppStrings.exitArabicText,
                          style: AppFonts.fontHeavy30Black.copyWith(color: AppColors.appWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.appLightGray,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10.sp),
                  ),
                ),
                child: Obx(
                  () {
                    DrawerItemModel item = controller.drawerItems[controller.currentItem.value];
                    return item.child;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
