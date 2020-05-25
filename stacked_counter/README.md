# stacked_counter

Dự án Flutter Counter kinh điển được viết lại sử dụng [Stacked](https://www.filledstacks.com/post/flutter-and-provider-architecture-using-stacked/)

Trong trường hợp đơn giản kiểu này, code sử dụng Stacked nhìn rất trong sáng, dễ hiểu. Tuy nhiên hãy thử những trường hợp quản lý trạng thái phức tạp thì mới đánh giá đúng được.

Stacked sử dụng mô hình MVVM

- [View](lib/counter_view.dart)
- [Model](lib/counter_view_model.dart)

khi Model thay đổi trạng thái thì View sẽ được vẽ lại.
