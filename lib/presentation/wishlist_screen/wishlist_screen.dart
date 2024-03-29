import 'controller/wishlist_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WishlistScreen extends GetWidget<WishlistController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: getVerticalSize(204.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(left: 1),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: getVerticalSize(167.00),
                                                width:
                                                    getHorizontalSize(374.00),
                                                margin: getMargin(bottom: 10),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMain111,
                                                              height:
                                                                  getVerticalSize(
                                                                      167.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      374.00))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .gradientGray5099WhiteA70099,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top:
                                                                                3),
                                                                        child: Padding(
                                                                            padding: getPadding(left: 16, right: 167),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                              Padding(
                                                                                  padding: getPadding(bottom: 1),
                                                                                  child: InkWell(
                                                                                      onTap: () {
                                                                                        onTapImgArrowleft();
                                                                                      },
                                                                                      child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24.00), width: getSize(24.00)))),
                                                                              Padding(padding: getPadding(left: 18, top: 4), child: Text("lbl_add_to_wishlist".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold20))
                                                                            ]))),
                                                                    CustomTextFormField(
                                                                        width:
                                                                            343,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            controller
                                                                                .group7CopyController,
                                                                        hintText:
                                                                            "lbl_product_name"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            left:
                                                                                15,
                                                                            top:
                                                                                49,
                                                                            right:
                                                                                15,
                                                                            bottom:
                                                                                34),
                                                                        variant:
                                                                            TextFormFieldVariant
                                                                                .FillBluegray50,
                                                                        padding:
                                                                            TextFormFieldPadding
                                                                                .PaddingAll19,
                                                                        fontStyle:
                                                                            TextFormFieldFontStyle
                                                                                .PoppinsRegular16,
                                                                        prefix: Container(
                                                                            margin: getMargin(
                                                                                left: 16,
                                                                                top: 16,
                                                                                right: 20,
                                                                                bottom: 16),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgActionShoppingbasket24px)),
                                                                        prefixConstraints: BoxConstraints(minWidth: getSize(24.00), minHeight: getSize(24.00)),
                                                                        validator: (value) {
                                                                          if (!isText(
                                                                              value)) {
                                                                            return "Please enter valid text";
                                                                          }
                                                                          return null;
                                                                        })
                                                                  ])))
                                                    ]))),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .group7CopyOneController,
                                            hintText: "lbl_amount".tr,
                                            margin: getMargin(
                                                left: 15, top: 10, right: 15),
                                            variant: TextFormFieldVariant
                                                .FillBluegray50,
                                            padding: TextFormFieldPadding
                                                .PaddingAll19,
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsRegular16,
                                            alignment: Alignment.bottomCenter,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 16,
                                                    right: 20,
                                                    bottom: 16),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgActionRange24px)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(24.00),
                                                minHeight: getSize(24.00)))
                                      ])),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.group7CopyTwoController,
                                  hintText: "msg_brand_optional".tr,
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  variant: TextFormFieldVariant.FillBluegray50,
                                  fontStyle:
                                      TextFormFieldFontStyle.PoppinsRegular16,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 16,
                                          right: 20,
                                          bottom: 16),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgVideocamera)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(24.00),
                                      minHeight: getSize(24.00))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 26, right: 16),
                                  child: DottedBorder(
                                      color: ColorConstant.bluegray80089,
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(1.00),
                                          top: getVerticalSize(1.00),
                                          right: getHorizontalSize(1.00),
                                          bottom: getVerticalSize(1.00)),
                                      strokeWidth: getHorizontalSize(1.00),
                                      radius: Radius.circular(8),
                                      borderType: BorderType.RRect,
                                      dashPattern: [8, 8],
                                      child: Container(
                                          width: double.infinity,
                                          decoration: AppDecoration
                                              .outlineBluegray80089
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder9),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 91,
                                                        top: 43,
                                                        right: 91),
                                                    child: InkWell(
                                                        onTap: () {
                                                          onTapImgCamera();
                                                        },
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCamera,
                                                            height:
                                                                getSize(62.00),
                                                            width: getSize(
                                                                62.00)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 91,
                                                        top: 29,
                                                        right: 90,
                                                        bottom: 29),
                                                    child: Text(
                                                        "msg_upload_images_h"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular16))
                                              ])))),
                              Container(
                                  height: getVerticalSize(274.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(left: 1, top: 11),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(top: 10),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgMain112,
                                                    height:
                                                        getVerticalSize(151.00),
                                                    width: getHorizontalSize(
                                                        374.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillWhiteA7008c,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 343,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .buttonsmobileController,
                                                          hintText:
                                                              "msg_save_to_wishlis"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 192,
                                                              right: 15,
                                                              bottom: 34),
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  top: 12,
                                                                  right: 16,
                                                                  bottom: 12),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSave)),
                                                          suffixConstraints:
                                                              BoxConstraints(
                                                                  minWidth:
                                                                      getHorizontalSize(
                                                                          24.00),
                                                                  minHeight:
                                                                      getVerticalSize(
                                                                          24.00)))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    // ignore: unused_local_variable
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
