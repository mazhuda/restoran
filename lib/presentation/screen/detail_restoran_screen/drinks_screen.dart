part of 'detail_restoran_screen.dart';

class DrinksScreen extends StatelessWidget {
  final List<DrinksEntity> drinks;

  DrinksScreen({@required this.drinks});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.light,
      child: ListView.builder(
          itemCount: drinks.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0.w, 16.w, 16.w),
              child: Text(
                drinks[index].name,
                style: TextStyle(fontSize: 20.sp, color: CustomColors.darkGrey),
              ),
            );
          }),
    );
  }
}
