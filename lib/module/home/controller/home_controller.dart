import 'package:get/get.dart';
import 'package:butani/model/home/flashsale.dart';
import 'package:butani/service/home_service/home_service.dart';
import '../../../model/home/best_seller.dart';
import '../../../model/home/exclusive_distributor.dart';
import '../../../model/home/featured.dart';
import '../../../model/home/home_model.dart';
import '../../../model/home/other.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;
  String? selectedOption;

  void setLocation(String value) {
    selectedOption = value;
    update();
  }

  List<BestSeller> bestSeller = <BestSeller>[];
  List<Flashsale> flashSale = <Flashsale>[];
  List<ExclusiveDistributor> exlusifDistriButor = <ExclusiveDistributor>[];
  List<Other> other = <Other>[];
  List<Featured> feature = <Featured>[];

  doGetProduct() async {
    final api = await HomeService().getProduct();
    bestSeller = api.bestSeller!;
    flashSale = api.flashsale!;
    exlusifDistriButor = api.exclusiveDistributor!;
    other = api.other!;
    feature = api.featured!;
    print('tes $bestSeller');
    update();
  }

  @override
  void onInit() {
    doGetProduct();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
