// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:butani/model/diskusi_product/datum.dart' as diskusiDatum;
import 'package:butani/service/detail_product_service/detail_product_service.dart';
import 'package:butani/service/diskusi_produksi_service/diskusi_produksi_service.dart';
import 'package:butani/service/review_service/review_service.dart';
import 'package:readmore/readmore.dart';

import '../../../../model/detal_product/product.dart';
import '../../../../model/detal_product/variant.dart';
import '../../../../model/home/best_seller.dart';
import '../../../../model/review_product/datum.dart';
import '../../../../service/home_service/home_service.dart';
import '../../../../shared/theme.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<BestSeller> bestSeller = <BestSeller>[];
  doGetProduct() async {
    final api = await HomeService().getProduct();
    bestSeller = api.bestSeller!;
    setState(() {});
  }

  bool readIsMore = false;
  int? maxline;

  List<Datum> review = <Datum>[];

  doGetReview() async {
    final api = await ReviewProductService().getReviewProductDetail();
    review = api.data!;
    setState(() {});
  }

  Product? productDetail;
  List photo = [];
  List<Variant> varian = <Variant>[];

  doGetProductDetail() async {
    final api = await DetailProductService().getProductDetail();
    productDetail = api.product!;
    photo = api.product!.photos!;
    varian = api.product!.variants!;
    setState(() {});

    print('tes lagi ${productDetail!.price}');
  }

  List<diskusiDatum.Datum> diskusiProduct = <diskusiDatum.Datum>[];

  doGetDiskusi() async {
    final api = await DiskusiDetailProductService().getDiskusiProductDetail();
    diskusiProduct = api.data!;
    setState(() {});
  }

  @override
  void initState() {
    doGetProductDetail();
    doGetProduct();
    doGetReview();
    doGetDiskusi();
    super.initState();
  }

  int? selectedCategory;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list,
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        height: 90.0.h,
        child: Row(
          children: [
            Container(
              height: 90.0.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),

                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.chat,
                  color: Colors.green,
                  size: 24.0,
                ),
              ),
            ),
            SizedBox(
              width: 20.0.w,
            ),
            Container(
              height: 90.0.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 2,
                      color: Color(0xff2E398F),
                    ),

                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Beli Langsung",
                  style: const TextStyle(
                    color: Color(0xff2E398F),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.0.w,
            ),
            Container(
              height: 90.0.h,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Keranjang"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2E398F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.6,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(photo.length, (index) {
                        var item = photo[index];
                        int photoNumber = index + 1;
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.6,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "$item",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 340.0,
                                bottom: 20.0,
                                child: Container(
                                  width: 50,
                                  height: 30.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        6.0,
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " $photoNumber/ ${photo.length}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          productDetail != null
                              ? " Rp ${productDetail!.price}"
                              : "-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      productDetail != null ? "${productDetail!.name}" : "-",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          productDetail != null
                              ? "Terjual ${productDetail!.sold}"
                              : "-",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  color: Colors.orange,
                                  Icons.star,
                                  size: 16.0,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  productDetail != null
                                      ? "${productDetail!.rating}"
                                      : "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  productDetail != null
                                      ? "(${productDetail!.reviewTotal})"
                                      : "",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Foto Pembeli",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "(54)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Pertanyaan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  productDetail != null
                                      ? "(${productDetail!.discussionTotal})"
                                      : "-",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Pilih Varian:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "${varian.length} Pilihan",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  SizedBox(
                    height: 40.0,
                    child: ListView.builder(
                      itemCount: varian.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = varian[index];
                        bool itemindex = item.id == selectedCategory;
                        return InkWell(
                          onTap: () {
                            selectedCategory = item.id;
                            setState(() {});
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(left: 10),
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: itemindex
                                    ? Colors.blueAccent
                                    : Colors.grey[400]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${item.name}",
                                style: TextStyle(
                                  color: itemindex
                                      ? Colors.blueAccent
                                      : Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Detail Produk",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 40,
                    child: Card(
                      child: SizedBox(
                        height: 100.0,
                        child: Row(
                          children: [
                            Text(
                              "Kondisi",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              width: 100.0,
                            ),
                            Text(
                              "Baru",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Card(
                      child: SizedBox(
                        height: 100.0,
                        child: Row(
                          children: [
                            Text(
                              "Min. Pemasanan",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              width: 34.0,
                            ),
                            Text(
                              productDetail != null
                                  ? "${productDetail!.minimumOrder} Buah"
                                  : "-",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Descripsi Produk",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Text(
                    productDetail != null
                        ? "${productDetail!.description} "
                        : "-",
                    maxLines: readIsMore ? null : 1,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () {
                        readIsMore = !readIsMore;
                        maxline = readIsMore ? null : 5;
                        setState(() {});
                      },
                      child: Text(
                        readIsMore ? "Perkecil " : "Baca Selengkapnya",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),

                  // ReadMoreText(
                  //   productDetail != null
                  // ? "${productDetail!.description} "
                  // : "-",
                  //   trimLines: 2,
                  //   // preDataText: "AMANDA",
                  //   preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                  //   style: TextStyle(color: Colors.black),
                  //   colorClickableText: Colors.blue,
                  //   trimMode: TrimMode.Line,
                  //   trimCollapsedText: 'Baca Selengkapnya',
                  //   trimExpandedText: ' show less',
                  // ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Produk Lainya",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 400.5.w,
                    height: 252.h,
                    child: ListView.builder(
                      itemCount: bestSeller.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = bestSeller[index];
                        return Container(
                          width: 128.5.w,
                          height: 252.h,
                          padding: EdgeInsets.zero,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            color: white,
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                '${item.thumbnail}',
                                width: 130.w,
                                height: 130.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    SizedBox(
                                      width: 106.w,
                                      child: Text(
                                        '${item.name}',
                                        style: defaultTextStyle.copyWith(
                                            fontSize: 11.sp,
                                            color: primaryBlack,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    SizedBox(
                                      width: 106.w,
                                      child: Text(
                                        '${item.price}',
                                        style: defaultTextStyle.copyWith(
                                            fontSize: 12.sp,
                                            color: primaryBlack,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: primaryYellow,
                                          size: 16.sp,
                                        ),
                                        SizedBox(
                                          width: 7.w,
                                        ),
                                        Text(
                                          '${item.rating}',
                                          style: defaultTextStyle.copyWith(
                                              fontSize: 11.sp,
                                              color: black400,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Text(
                                          'Terjual ${item.sold}',
                                          style: defaultTextStyle.copyWith(
                                              fontSize: 10.sp,
                                              color: black400,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Ulasan Pembeli",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            color: Colors.orange,
                            Icons.star,
                            size: 24.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            productDetail != null
                                ? "${productDetail!.rating}"
                                : "",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            productDetail != null
                                ? "(${productDetail!.reviewTotal} Ulasan)"
                                : "",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[900]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            width: 100,
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[900]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Urutkan",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: review.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      // clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = review[index];
                        double doubleValue = item.rating!.toDouble();
                        return Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "${item.customer!.photo ?? "https://i.ibb.co/S32HNjD/no-image.jpg"} ",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "${item.customer!.name ?? "-"}",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  RatingBar(
                                    size: 24,
                                    filledIcon: Icons.star,
                                    emptyIcon: Icons.star_border,
                                    onRatingChanged: (value) =>
                                        debugPrint('$value'),
                                    initialRating: doubleValue,
                                    maxRating: 5,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "${item.timeHuman}",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "${item.content}",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Pertanyaan Customer",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[900]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Terbaru",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            // width: 100,
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[900]!,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 18.0,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Pertanyaan",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: diskusiProduct.length,
                      shrinkWrap: true,
                      controller: ScrollController(),
                      // scrollDirection: Axis.vertical,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        var item = diskusiProduct[index];
                        return Card(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            "https://i.ibb.co/S32HNjD/no-image.jpg",
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "${item.user!.name}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "${item.timeHuman}",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " ${item.content}",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: item.answers!.length,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        itemBuilder: (context, index) {
                                          var items = item.answers![index];
                                          return Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                        "https://i.ibb.co/S32HNjD/no-image.jpg",
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    Text(
                                                      "${items.user!.name}",
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "${items.content}",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
