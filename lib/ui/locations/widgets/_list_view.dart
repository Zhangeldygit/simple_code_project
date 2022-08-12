
part of '../locations_screen.dart';

class _ListView extends StatelessWidget {
  const _ListView({
    Key? key,
    required this.locationsList,
  }) : super(key: key);

  final List<Location> locationsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(
        top: 12.0,
        left: 12.0,
        right: 12.0,
      ),
      itemCount: locationsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          child: LocationListTile(locationsList[index]),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetails(locationsList[index])));
          },
        );
      },
      separatorBuilder: (context, _) => const Divider(height: 20),
    );
  }
}
