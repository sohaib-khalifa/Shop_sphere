// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruits_hub/core/entities/product_entity.dart';
// import 'package:fruits_hub/core/utils/app_colors.dart';
// import 'package:fruits_hub/core/utils/app_text_styles.dart';
// import 'package:fruits_hub/core/widgets/custom_network_image.dart';
// import 'package:fruits_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

// class FruitItem extends StatelessWidget {
//   const FruitItem({super.key, required this.productEntity});

//   final ProductEntity productEntity;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: ShapeDecoration(
//         color: const Color(0xFFF3F5F7),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             right: 0,
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.favorite_outline,
//                 )),
//           ),
//           Positioned.fill(
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 productEntity.imageUrl != null
//                     ? Flexible(
//                         child: CustomNetworkImage(
//                             imageUrl: productEntity.imageUrl!),
//                       )
//                     : Container(
//                         color: Colors.grey,
//                         height: 100,
//                         width: 100,
//                       ),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 ListTile(
//                   title: Text(
//                     productEntity.name,
//                     textAlign: TextAlign.right,
//                     style: TextStyles.semiBold16,
//                   ),
//                   subtitle: Text.rich(
//                     TextSpan(
//                       children: [
//                         TextSpan(
//                           text: '${productEntity.price}جنية ',
//                           style: TextStyles.bold13.copyWith(
//                             color: AppColors.secondaryColor,
//                           ),
//                         ),
//                         TextSpan(
//                           text: '/',
//                           style: TextStyles.bold13.copyWith(
//                             color: AppColors.lightSecondaryColor,
//                           ),
//                         ),
//                         TextSpan(
//                           text: ' ',
//                           style: TextStyles.semiBold13.copyWith(
//                             color: AppColors.secondaryColor,
//                           ),
//                         ),
//                         TextSpan(
//                           text: 'كيلو',
//                           style: TextStyles.semiBold13.copyWith(
//                             color: AppColors.lightSecondaryColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.right,
//                   ),
//                   trailing: GestureDetector(
//                     onTap: () {
//                       context.read<CartCubit>().addProduct(productEntity);
//                     },
//                     child: const CircleAvatar(
//                       backgroundColor: AppColors.primaryColor,
//                       child: Icon(
//                         Icons.add,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:fruits_hub/core/entities/product_entity.dart';
// // import 'package:fruits_hub/core/utils/app_colors.dart';
// // import 'package:fruits_hub/core/utils/app_text_styles.dart';
// // import 'package:fruits_hub/core/widgets/custom_network_image.dart';
// // import 'package:fruits_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

// // class FruitItem extends StatelessWidget {
// //   const FruitItem({super.key, required this.productEntity});

// //   final ProductEntity productEntity;

// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       height: 200, // أو حسب ارتفاعك المناسب اللي يشيل المحتوى كله
// //       child: Container(
// //         decoration: ShapeDecoration(
// //           color: const Color(0xFFF3F5F7),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(4),
// //           ),
// //         ),
// //         child: Stack(
// //           children: [
// //             Positioned(
// //               top: 0,
// //               right: 0,
// //               child: IconButton(
// //                 onPressed: () {},
// //                 icon: const Icon(Icons.favorite_outline),
// //               ),
// //             ),
// //             Padding(
// //               padding:
// //                   const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.start,
// //                 mainAxisSize: MainAxisSize.max,
// //                 children: [
// //                   const SizedBox(height: 20),
// //                   productEntity.imageUrl != null
// //                       ? SizedBox(
// //                           height: 100,
// //                           width: 100,
// //                           child: CustomNetworkImage(
// //                               imageUrl: productEntity.imageUrl!),
// //                         )
// //                       : Container(
// //                           color: Colors.grey,
// //                           height: 100,
// //                           width: 100,
// //                         ),
// //                   const SizedBox(height: 8),
// //                   Expanded(
// //                     child: ListTile(
// //                       contentPadding: EdgeInsets.zero,
// //                       title: Text(
// //                         productEntity.name,
// //                         textAlign: TextAlign.right,
// //                         style: TextStyles.semiBold16,
// //                       ),
// //                       subtitle: Text.rich(
// //                         TextSpan(
// //                           children: [
// //                             TextSpan(
// //                               text: '${productEntity.price}جنية ',
// //                               style: TextStyles.bold13.copyWith(
// //                                 color: AppColors.secondaryColor,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: '/',
// //                               style: TextStyles.bold13.copyWith(
// //                                 color: AppColors.lightSecondaryColor,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: ' كيلو',
// //                               style: TextStyles.semiBold13.copyWith(
// //                                 color: AppColors.lightSecondaryColor,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         textAlign: TextAlign.right,
// //                       ),
// //                       trailing: GestureDetector(
// //                         onTap: () {
// //                           context.read<CartCubit>().addProduct(productEntity);
// //                         },
// //                         child: const CircleAvatar(
// //                           backgroundColor: AppColors.primaryColor,
// //                           child: Icon(
// //                             Icons.add,
// //                             color: Colors.white,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_network_image.dart';
import 'package:fruits_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});

  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                )),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // هذا هو الجزء الذي يسبب المشكلة مع الروابط غير الصالحة
                productEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetworkImage(
                            imageUrl: productEntity.imageUrl!), // هنا كان الـ !
                      )
                    : Container(
                        color: Colors.grey,
                        height: 100,
                        width: 100,
                      ),
                const SizedBox(
                  height: 24,
                ),
                ListTile(
                  title: Text(
                    productEntity.name,
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${productEntity.price}جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'كيلو',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.right,
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      context.read<CartCubit>().addProduct(productEntity);
                    },
                    child: const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
