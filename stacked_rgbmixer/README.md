# RGB_Mixer quản lý AppState theo phong cách FilledStacked

## Stacked là gì?
[Stacked](https://www.filledstacks.com/post/flutter-and-provider-architecture-using-stacked/) là một thư viện quản lý AppState mới ra mắt. Khi mình xem [video hướng dẫn](https://youtu.be/DO8le1W_HqQ) thấy cũng rất dễ hiểu.

Ưu điểm của Stacked là hướng đến kiến trúc MVVM. Tuy nhiên yêu cầu tuân thủ khá là chặt:

- Views should never MAKE USE of a service directly.
- Views should contain zero to (preferred) no logic. If the logic is from UI only items then we do the least amount of required logic and pass the rest to the ViewModel.
- Views should ONLY render the state in its ViewModel.
- 1 View has 1 ViewModel
- ViewModels for widgets that represent page views are bound to a single View only.
- ViewModels may be re-used if the UI requires the exact same functionality.
- ViewModels should not know about other ViewModels**


## Làm sao để nhiều View dùng chung một singleton ViewModel?
Chú ý mình có mong muốn CustomAppBar cũng đổi màu nền theo giá trị của 3 slider
tuy nhiên **mong muốn này chưa thành công**.

Chú ý cả [CustomAppBar](lib/customAppBar.dart) và [RGBMixerView](lib/rgb_mixer_view.dart) đều sử dụng chung một ViewModel là [RGBMixerModel](lib/rgb_mixer_model.dart)

## Đánh giá cá nhân
Số lượng dòng code của Stacked không ít hơn so với Mobx hay Bloc. Đánh giá cá nhân thì code MobX vẫn dễ code nhất. Mình sẽ thử Provider rồi cho nhận xét