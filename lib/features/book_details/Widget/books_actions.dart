import 'package:flutter/material.dart';
import 'package:readly/core/utils/launch_url.dart';
import 'package:readly/core/widgets/custom_button.dart';
import 'package:readly/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                launchCustomUrl(context, url.toString());
              },
              bacgroundColore: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                launchCustomUrl(context, url.toString());
              },
              bacgroundColore: const Color(0xffEf8262),
              textColor: Colors.white,
              text: getText(bookModel),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Get Free';
    }
  }
}
