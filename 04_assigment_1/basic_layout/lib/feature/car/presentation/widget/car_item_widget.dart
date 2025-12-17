part of '../car_screen.dart';

class _CarItemWidget extends StatelessWidget {
  const _CarItemWidget({
    super.key,
    required this.car,
    required this.inCart,
    required this.onToggle,
  });

  final CardEntity car;
  final bool inCart;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: inCart ? Colors.grey.shade300 : Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onToggle,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Icon(
                    Icons.directions_car_filled,
                    size: 52,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                car.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                car.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  height: 1.3,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${car.price.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Chip(
                    backgroundColor: inCart
                        ? Colors.indigo
                        : Colors.grey.shade200,
                    label: Text(
                      inCart ? '담김' : '담기',
                      style: TextStyle(
                        color: inCart ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
