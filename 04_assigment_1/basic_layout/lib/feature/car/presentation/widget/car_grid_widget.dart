part of '../car_screen.dart';

class _CarGridWidget extends StatelessWidget {
  const _CarGridWidget({
    required this.carList,
    required this.toggleCart,
    required this.selectedIds,
  });

  final List<CardEntity> carList;
  final void Function(CardEntity car) toggleCart;
  final Set<int> selectedIds;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.65,
        ),
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final CardEntity car = carList[index];
          final bool inCart = selectedIds.contains(car.id);
          return _CarItemWidget(
            key: ValueKey(car.id),
            car: car,
            inCart: inCart,
            onToggle: () => toggleCart(car),
          );
        },
      ),
    );
  }
}
