// import 'package:flutter/material.dart';

// class CustomNetworkImage extends StatelessWidget {
//   const CustomNetworkImage({
//     super.key,
//     required this.imageUrl,
//   });

//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Image.network(imageUrl);
//   }
// }

import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl; // هذا ما زال يتطلب String غير null

  @override
  Widget build(BuildContext context) {
    // التعديل هنا لكي لا يتعطل التطبيق عند وجود رابط غير صالح
    return Image.network(
      imageUrl,
      errorBuilder: (context, error, stackTrace) {
        // يمكنك هنا عرض صورة افتراضية أو أي Widget آخر عند حدوث خطأ في تحميل الصورة
        // هذا سيمنع التعطل التام للتطبيق.
        return Container(
          color: Colors.grey[300], // لون رمادي كـ placeholder
          child: const Icon(Icons.error_outline,
              color: Colors.red, size: 40), // أيقونة خطأ
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      fit: BoxFit.cover, // أضف fit لتجنب مشاكل التخطيط الأولية
    );
  }
}
