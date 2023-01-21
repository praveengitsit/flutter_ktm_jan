part of 'home_page_container.dart';

const titleTextStyle = TextStyle(
  color: Colors.blue,
  fontWeight: FontWeight.bold,
);

const shortInfoTextStyle = TextStyle(
  color: Colors.pink,
  fontWeight: FontWeight.bold,
);

class _HomeProduct extends StatelessWidget {
  final ProductBasicInfo productBasicInfo;
  const _HomeProduct({
    Key? key,
    required this.productBasicInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            productBasicInfo.name,
            style: titleTextStyle,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              productBasicInfo.imageUrl,
            ),
          ),
          Text(
            productBasicInfo.shortInfo,
            style: shortInfoTextStyle,
          ),
        ],
      ),
    );
  }
}
