import 'species.dart';
import 'version_detail.dart';

class HeldItem {
  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  final Species item;
  final List<VersionDetail> versionDetails;

  factory HeldItem.fromJson(Map<String, dynamic> json) => HeldItem(
    item: Species.fromJson(json['item']),
    versionDetails: List<VersionDetail>.from(json['version_details'].map((x) => VersionDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'item': item.toJson(),
    'version_details': List<dynamic>.from(versionDetails.map((x) => x.toJson())),
  };
}