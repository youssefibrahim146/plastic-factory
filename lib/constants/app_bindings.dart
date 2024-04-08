import 'package:plastic_factory/constants/app_imports.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => TotalDebtsOfEachClientController(),
      fenix: true,
    );
    Get.lazyPut(
      () => DetailsOfDebtsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SupplyOfDebtsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ControlBoardController(),
      fenix: true,
    );
    Get.lazyPut(
      () => CustomersController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SuppliersController(),
      fenix: true,
    );
    Get.lazyPut(
      () => AccountsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => NewSaleController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SalesController(),
      fenix: true,
    );
    Get.lazyPut(
      () => HomeController(),
      fenix: true,
    );
  }
}
