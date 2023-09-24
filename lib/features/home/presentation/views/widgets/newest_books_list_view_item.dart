import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel book;
  const BookListViewItem({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
              borderRadius: BorderRadius.circular(8),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo?.title ?? '',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      book.volumeInfo?.authors?[0] ?? '',
                      style: Styles.textStyle14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      BookRating(
                        raiting: book.volumeInfo?.averageRating ?? 4.8,
                        count: book.volumeInfo?.ratingsCount ?? 245,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
