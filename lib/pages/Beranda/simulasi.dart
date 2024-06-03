// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, unused_element

import 'package:cupk_connect/controller/beranda_controller.dart';
import 'package:cupk_connect/core/form.dart';
// import 'package:cupk_connect/routes/route_names.dart';
// import 'package:cupk_connect/routes/route_names.dart';
// import 'package:cupk_connect/model/user.dart';
// import 'package:cupk_connect/routes/route_names.dart';
// import 'package:cupk_connect/pages/Beranda/detailsimulasi.dart';
import 'package:cupk_connect/utils/constans.dart';
import 'package:cupk_connect/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:flutter/rendering.dart';

const double _bottomPaddingForButton = 150.0;
const double _buttonHeight = 56.0;
const double _buttonWidth = 200.0;
const double _pagePadding = 16.0;
const double _pageBreakpoint = 768.0;
const double _heroImageHeight = 250.0;
const Color _lightThemeShadowColor = Color(0xFFE4E4E4);
const Color _darkThemeShadowColor = Color(0xFF121212);
const Color _darkSabGradientColor = Color(0xFF313236);
final materialColorsInGrid = allMaterialColors.take(20).toList();
final materialColorsInSliverList = allMaterialColors.sublist(20, 25);
final materialColorsInSpinner = allMaterialColors.sublist(30, 50);

class Simulasi_V extends StatefulWidget {
  const Simulasi_V({Key? key}) : super(key: key);

  @override
  State<Simulasi_V> createState() => _Simulasi_VState();
}

class _Simulasi_VState extends State<Simulasi_V> {
  final formKeyPass = GlobalKey<FormState>();

  var controller = Get.put(BerandaController());

  @override
  void initState() {
    super.initState();
  }

  List<dynamic> hasil = [];

  TextEditingController jumlahController = TextEditingController();
  TextEditingController lamaController = TextEditingController();
  TextEditingController sukuController = TextEditingController();

  final pageIndexNotifier = ValueNotifier(0);

  SliverWoltModalSheetPage page2(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return WoltModalSheetPage(
      pageTitle: Padding(
        padding: const EdgeInsets.all(_pagePadding),
        child: Text(
          'Rincian Pinjaman',
          style:
              textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      heroImage: const Image(
        image: NetworkImage(
          'https://img.freepik.com/free-photo/white-cloud-blue-sky_74190-2381.jpg?t=st=1713534826~exp=1713538426~hmac=7bc0c59b9460715b54247cfe319377e503dbee67ebecbc27d92de92444cb7f9d&w=740',
        ),
        fit: BoxFit.cover,
      ),
      leadingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(_pagePadding),
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () => pageIndexNotifier.value = pageIndexNotifier.value - 1,
      ),
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(_pagePadding),
        icon: const Icon(Icons.close),
        onPressed: () {
          Navigator.of(modalSheetContext).pop();
          pageIndexNotifier.value = 0;
        },
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jumlah Pinjaman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              CurrencyFormat.convertToIdr(hasil[0], 1),
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Lama Pinjaman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '${hasil[1].toString()} Bulan',
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Bunga Pinjaman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              CurrencyFormat.convertToIdr(hasil[2] * hasil[1], 1),
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Angsuran Pokok',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              CurrencyFormat.convertToIdr(hasil[3], 1),
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Angsuran Total',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              CurrencyFormat.convertToIdr(hasil[4], 1),
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8.0),
            // const Text(
            //   'Pinjaman Berakhir Pada Tanggal',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 8.0),
            // Text(
            //   hasil[5].toString(),
            //   style: const TextStyle(
            //     color: Colors.blue,
            //   ),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            // SizedBox(
            //   width: Get.width,
            //   height: 48,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       DialogHelper.showloading();
            //       Future.delayed(const Duration(seconds: 2), () {
            //         DialogHelper.hideLoading();
            //         Get.toNamed(RouteName.pageDetailSimulasi);
            //       });
            //     },
            //     style: ButtonStyle(
            //       backgroundColor:
            //           MaterialStateProperty.all<Color>(sPrimaryColor),
            //       shape: MaterialStateProperty.all<OutlinedBorder>(
            //         const RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10)),
            //         ),
            //       ),
            //     ),
            //     child: Text(
            //       'Detail Pinjaman',
            //       style: styleText(
            //           whiteColor, 16, FontWeight.normal, TextDecoration.none),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void loading() {
    Center(
      child: SizedBox(
        height: Get.height,
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: sPrimaryColor,
          size: 100,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  color: whiteColor,
                  Icons.arrow_back,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "Simulasi Pinjaman",
                style: styleText(
                    sPrimaryColor, 18, FontWeight.w900, TextDecoration.none),
              ),
            ],
          ),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.insert_chart,
                              size: 75.0,
                              color: sPrimaryColor,
                            ),
                            Text(
                              "Simulasi\nPinjaman",
                              textAlign: TextAlign.center,
                              style: styleText(sPrimaryColor, 26,
                                  FontWeight.bold, TextDecoration.none),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Form(
                            key: formKeyPass,
                            child: Column(
                              children: [
                                Formlogin(
                                  controller: jumlahController,
                                  validator: (p0) {
                                    if (p0!.isEmpty) {
                                      return "wajib diisi";
                                    }
                                    return null;
                                  },
                                  type: TextInputType.number,
                                  hintText: "Jumlah Pinjaman",
                                  password: false,
                                  textColor: blackColor,
                                  prefixIcon: const Icon(
                                    Icons.money_outlined,
                                    color: sPrimaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Formlogin(
                                  maxLengh: 3,
                                  controller: lamaController,
                                  suffixText: "Bulan",
                                  validator: (p0) {
                                    if (p0!.isEmpty) {
                                      return "wajib diisi";
                                    }
                                    return null;
                                  },
                                  type: TextInputType.number,
                                  hintText: "Lama Pembayaran ",
                                  password: false,
                                  textColor: blackColor,
                                  prefixIcon: const Icon(
                                    Icons.money_outlined,
                                    color: sPrimaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Formlogin(
                                  controller: sukuController,
                                  suffixText: "% Perbulan",
                                  validator: (p0) {
                                    if (p0!.isEmpty) {
                                      return "wajib diisi";
                                    }
                                    return null;
                                  },
                                  type: TextInputType.number,
                                  hintText: "Suku Bunga ",
                                  password: false,
                                  textColor: blackColor,
                                  prefixIcon: const Icon(
                                    Icons.money_outlined,
                                    color: sPrimaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: 168,
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (formKeyPass.currentState!
                                          .validate()) {
                                        // Get.back();
                                        DialogHelper.showloading();
                                        Future.delayed(
                                            const Duration(seconds: 2), () {
                                          DialogHelper.hideLoading();
                                          WoltModalSheet.show<void>(
                                            pageIndexNotifier:
                                                pageIndexNotifier,
                                            context: context,
                                            pageListBuilder:
                                                (modalSheetContext) {
                                              final textTheme =
                                                  Theme.of(context).textTheme;
                                              return [
                                                page2(modalSheetContext,
                                                    textTheme),
                                              ];
                                            },
                                            modalTypeBuilder: (context) {
                                              final size =
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width;
                                              if (size < _pageBreakpoint) {
                                                return WoltModalType
                                                    .bottomSheet;
                                              } else {
                                                return WoltModalType.dialog;
                                              }
                                            },
                                            onModalDismissedWithBarrierTap: () {
                                              debugPrint(
                                                  'Closed modal sheet with barrier tap');
                                              Navigator.of(context).pop();
                                              pageIndexNotifier.value = 0;
                                            },
                                            maxDialogWidth: 560,
                                            minDialogWidth: 400,
                                            minPageHeight: 0.0,
                                            maxPageHeight: 0.9,
                                          );
                                        });

                                        var result = controller.hitungPinjaman(
                                          int.parse(lamaController.text),
                                          double.parse(sukuController.text),
                                          double.parse(jumlahController.text),
                                        );
                                        hasil = result;
                                        // print(result);
                                      }
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              sPrimaryColor),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Hitung',
                                      style: styleText(
                                          whiteColor,
                                          16,
                                          FontWeight.normal,
                                          TextDecoration.none),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: 168,
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      jumlahController.clear();
                                      sukuController.clear();
                                      lamaController.clear();
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              sPrimaryColor),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Reset',
                                      style: styleText(
                                          whiteColor,
                                          16,
                                          FontWeight.normal,
                                          TextDecoration.none),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void loading(){
//  Center(
//         child: LoadingAnimationWidget.twistingDots(
//           leftDotColor: const Color(0xFF1A1A3F),
//           rightDotColor: const Color(0xFFEA3799),
//           size: 200,
//         );
// }

class Mail {
  Mail({
    required this.sender,
    required this.sub,
    required this.msg,
    required this.date,
    required this.isUnread,
  });

  String sender;
  String sub;
  String msg;
  String date;
  bool isUnread;
}

List<Color> get allMaterialColors {
  List<Color> allMaterialColorsWithShades = [];

  for (MaterialColor color in Colors.primaries) {
    allMaterialColorsWithShades.add(color.shade100);
    allMaterialColorsWithShades.add(color.shade200);
    allMaterialColorsWithShades.add(color.shade300);
    allMaterialColorsWithShades.add(color.shade400);
    allMaterialColorsWithShades.add(color.shade500);
    allMaterialColorsWithShades.add(color.shade600);
    allMaterialColorsWithShades.add(color.shade700);
    allMaterialColorsWithShades.add(color.shade800);
    allMaterialColorsWithShades.add(color.shade900);
  }
  return allMaterialColorsWithShades;
}

class ColorTile extends StatelessWidget {
  final Color color;

  const ColorTile({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 600,
      child: Center(
        child: Text(
          color.toString(),
          style: TextStyle(
            color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Shifter extends SingleChildRenderObjectWidget {
  /// Creates an instance of [Shifter].
  const Shifter({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _SpinnerRenderSliver();
  }
}

class _SpinnerRenderSliver extends RenderSliver
    with RenderObjectWithChildMixin<RenderBox> {
  final LayerHandle<TransformLayer> _transformLayer =
      LayerHandle<TransformLayer>();
  Matrix4? _paintTransform;

  @override
  void setupParentData(RenderObject child) {
    if (child.parentData is! SliverPhysicalParentData) {
      child.parentData = SliverPhysicalParentData();
    }
  }

  @override
  void performLayout() {
    _paintTransform = null;

    final constraints = this.constraints;
    child!.layout(constraints.asBoxConstraints(), parentUsesSize: true);
    final double childExtent;
    final childSizeWidth = child!.size.width;
    switch (constraints.axis) {
      case Axis.horizontal:
        childExtent = childSizeWidth;
        break;
      case Axis.vertical:
        childExtent = child!.size.height;
        break;
    }

    final paintedChildSize = calculatePaintOffset(
      constraints,
      from: 0.0,
      to: childExtent,
    );
    final cacheExtent = calculateCacheOffset(
      constraints,
      from: 0.0,
      to: childExtent,
    );

    final scrollOffset = constraints.scrollOffset;

    if (scrollOffset > 0 && paintedChildSize > 0) {
      final shift = (1 - paintedChildSize / childExtent) * childSizeWidth;

      _paintTransform = Matrix4.identity()..translate(shift, 0.0);
    }

    assert(paintedChildSize.isFinite);
    assert(paintedChildSize >= 0.0);
    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintExtent: paintedChildSize,
      cacheExtent: cacheExtent,
      maxPaintExtent: childExtent,
      hitTestExtent: paintedChildSize,
      hasVisualOverflow: childExtent > constraints.remainingPaintExtent ||
          constraints.scrollOffset > 0.0,
    );

    _setChildParentData(child!, constraints, geometry!);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null && geometry!.visible) {
      _transformLayer.layer = context.pushTransform(
        needsCompositing,
        offset,
        _paintTransform ?? Matrix4.identity(),
        _paintChild,
        oldLayer: _transformLayer.layer,
      );
    } else {
      _transformLayer.layer = null;
    }
  }

  @override
  void applyPaintTransform(covariant RenderObject child, Matrix4 transform) {
    if (_paintTransform != null) {
      transform.multiply(_paintTransform!);
    }
    final childParentData = child.parentData! as SliverPhysicalParentData;

    // for make it more readable
    // ignore: cascade_invocations
    childParentData.applyPaintTransform(transform);
  }

  @override
  void dispose() {
    _transformLayer.layer = null;
    super.dispose();
  }

  void _paintChild(PaintingContext context, Offset offset) {
    final childParentData = child!.parentData! as SliverPhysicalParentData;
    context.paintChild(child!, offset + childParentData.paintOffset);
  }

  void _setChildParentData(
    RenderObject child,
    SliverConstraints constraints,
    SliverGeometry geometry,
  ) {
    final childParentData = child.parentData! as SliverPhysicalParentData;
    var dx = 0.0;
    var dy = 0.0;
    switch (applyGrowthDirectionToAxisDirection(
      constraints.axisDirection,
      constraints.growthDirection,
    )) {
      case AxisDirection.up:
        dy = -(geometry.scrollExtent -
            (geometry.paintExtent + constraints.scrollOffset));
        break;
      case AxisDirection.right:
        dx = -constraints.scrollOffset;
        break;
      case AxisDirection.down:
        dy = -constraints.scrollOffset;
        break;
      case AxisDirection.left:
        dx = -(geometry.scrollExtent -
            (geometry.paintExtent + constraints.scrollOffset));
        break;
    }

    childParentData.paintOffset = Offset(dx, dy);
  }
}
