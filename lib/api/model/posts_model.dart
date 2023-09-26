// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  Data data;

  PostModel({
    required this.data,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  PropertySearch propertySearch;

  Data({
    required this.propertySearch,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    propertySearch: PropertySearch.fromJson(json["propertySearch"]),
  );

  Map<String, dynamic> toJson() => {
    "propertySearch": propertySearch.toJson(),
  };
}

class PropertySearch {
  String typename;
  FilterMetadata filterMetadata;
  UniversalSortAndFilter universalSortAndFilter;
  List<Property> properties;
  List<Property> propertySearchListings;
  Summary summary;
  SearchCriteria searchCriteria;
  ShoppingContext shoppingContext;
  MapClass map;
  Clickstream clickstream;

  PropertySearch({
    required this.typename,
    required this.filterMetadata,
    required this.universalSortAndFilter,
    required this.properties,
    required this.propertySearchListings,
    required this.summary,
    required this.searchCriteria,
    required this.shoppingContext,
    required this.map,
    required this.clickstream,
  });

  factory PropertySearch.fromJson(Map<String, dynamic> json) => PropertySearch(
    typename: json["__typename"],
    filterMetadata: FilterMetadata.fromJson(json["filterMetadata"]),
    universalSortAndFilter: UniversalSortAndFilter.fromJson(json["universalSortAndFilter"]),
    properties: List<Property>.from(json["properties"].map((x) => Property.fromJson(x))),
    propertySearchListings: List<Property>.from(json["propertySearchListings"].map((x) => Property.fromJson(x))),
    summary: Summary.fromJson(json["summary"]),
    searchCriteria: SearchCriteria.fromJson(json["searchCriteria"]),
    shoppingContext: ShoppingContext.fromJson(json["shoppingContext"]),
    map: MapClass.fromJson(json["map"]),
    clickstream: Clickstream.fromJson(json["clickstream"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "filterMetadata": filterMetadata.toJson(),
    "universalSortAndFilter": universalSortAndFilter.toJson(),
    "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
    "propertySearchListings": List<dynamic>.from(propertySearchListings.map((x) => x.toJson())),
    "summary": summary.toJson(),
    "searchCriteria": searchCriteria.toJson(),
    "shoppingContext": shoppingContext.toJson(),
    "map": map.toJson(),
    "clickstream": clickstream.toJson(),
  };
}

class Clickstream {
  String typename;
  dynamic searchResultsViewed;

  Clickstream({
    required this.typename,
    required this.searchResultsViewed,
  });

  factory Clickstream.fromJson(Map<String, dynamic> json) => Clickstream(
    typename: json["__typename"],
    searchResultsViewed: json["searchResultsViewed"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "searchResultsViewed": searchResultsViewed,
  };
}

class FilterMetadata {
  String typename;
  List<Amenity> amenities;
  List<NeighborhoodElement> neighborhoods;
  PriceRange priceRange;

  FilterMetadata({
    required this.typename,
    required this.amenities,
    required this.neighborhoods,
    required this.priceRange,
  });

  factory FilterMetadata.fromJson(Map<String, dynamic> json) => FilterMetadata(
    typename: json["__typename"],
    amenities: List<Amenity>.from(json["amenities"].map((x) => Amenity.fromJson(x))),
    neighborhoods: List<NeighborhoodElement>.from(json["neighborhoods"].map((x) => NeighborhoodElement.fromJson(x))),
    priceRange: PriceRange.fromJson(json["priceRange"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "amenities": List<dynamic>.from(amenities.map((x) => x.toJson())),
    "neighborhoods": List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
    "priceRange": priceRange.toJson(),
  };
}

class Amenity {
  AmenityTypename typename;
  int id;

  Amenity({
    required this.typename,
    required this.id,
  });

  factory Amenity.fromJson(Map<String, dynamic> json) => Amenity(
    typename: amenityTypenameValues.map[json["__typename"]]!,
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": amenityTypenameValues.reverse[typename],
    "id": id,
  };
}

enum AmenityTypename {
  PROPERTY_AMENITY_VALUE
}

final amenityTypenameValues = EnumValues({
  "PropertyAmenityValue": AmenityTypename.PROPERTY_AMENITY_VALUE
});

class NeighborhoodElement {
  PurpleTypename typename;
  String name;
  String regionId;

  NeighborhoodElement({
    required this.typename,
    required this.name,
    required this.regionId,
  });

  factory NeighborhoodElement.fromJson(Map<String, dynamic> json) => NeighborhoodElement(
    typename: purpleTypenameValues.map[json["__typename"]]!,
    name: json["name"],
    regionId: json["regionId"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": purpleTypenameValues.reverse[typename],
    "name": name,
    "regionId": regionId,
  };
}

enum PurpleTypename {
  NEIGHBORHOOD
}

final purpleTypenameValues = EnumValues({
  "Neighborhood": PurpleTypename.NEIGHBORHOOD
});

class PriceRange {
  String typename;
  double max;
  double min;
  String? id;

  PriceRange({
    required this.typename,
    required this.max,
    required this.min,
    this.id,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    typename: json["__typename"],
    max: json["max"]?.toDouble(),
    min: json["min"]?.toDouble(),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "max": max,
    "min": min,
    "id": id,
  };
}

class MapClass {
  String typename;
  dynamic subtitle;

  MapClass({
    required this.typename,
    required this.subtitle,
  });

  factory MapClass.fromJson(Map<String, dynamic> json) => MapClass(
    typename: json["__typename"],
    subtitle: json["subtitle"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "subtitle": subtitle,
  };
}

class Property {
  PropertyTypename typename;
  String? id;
  List<dynamic>? featuredMessages;
  String? name;
  Availability? availability;
  PropertyImage? propertyImage;
  DestinationInfo? destinationInfo;
  dynamic legalDisclaimer;
  dynamic listingFooter;
  MapMarker? mapMarker;
  PropertyNeighborhood? neighborhood;
  OfferBadge? offerBadge;
  OfferSummary? offerSummary;
  dynamic pinnedDetails;
  PropertyPrice? price;
  PriceAfterLoyaltyPointsApplied? priceAfterLoyaltyPointsApplied;
  List<dynamic>? propertyFees;
  Reviews? reviews;
  dynamic sponsoredListing;
  dynamic star;
  dynamic supportingMessages;
  String? regionId;
  PriceMetadata? priceMetadata;
  dynamic saveTripItem;

  Property({
    required this.typename,
    this.id,
    this.featuredMessages,
    this.name,
    this.availability,
    this.propertyImage,
    this.destinationInfo,
    this.legalDisclaimer,
    this.listingFooter,
    this.mapMarker,
    this.neighborhood,
    this.offerBadge,
    this.offerSummary,
    this.pinnedDetails,
    this.price,
    this.priceAfterLoyaltyPointsApplied,
    this.propertyFees,
    this.reviews,
    this.sponsoredListing,
    this.star,
    this.supportingMessages,
    this.regionId,
    this.priceMetadata,
    this.saveTripItem,
  });

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    typename: propertyTypenameValues.map[json["__typename"]]!,
    id: json["id"],
    featuredMessages: json["featuredMessages"] == null ? [] : List<dynamic>.from(json["featuredMessages"]!.map((x) => x)),
    name: json["name"],
    availability: json["availability"] == null ? null : Availability.fromJson(json["availability"]),
    propertyImage: json["propertyImage"] == null ? null : PropertyImage.fromJson(json["propertyImage"]),
    destinationInfo: json["destinationInfo"] == null ? null : DestinationInfo.fromJson(json["destinationInfo"]),
    legalDisclaimer: json["legalDisclaimer"],
    listingFooter: json["listingFooter"],
    mapMarker: json["mapMarker"] == null ? null : MapMarker.fromJson(json["mapMarker"]),
    neighborhood: json["neighborhood"] == null ? null : PropertyNeighborhood.fromJson(json["neighborhood"]),
    offerBadge: json["offerBadge"] == null ? null : OfferBadge.fromJson(json["offerBadge"]),
    offerSummary: json["offerSummary"] == null ? null : OfferSummary.fromJson(json["offerSummary"]),
    pinnedDetails: json["pinnedDetails"],
    price: json["price"] == null ? null : PropertyPrice.fromJson(json["price"]),
    priceAfterLoyaltyPointsApplied: json["priceAfterLoyaltyPointsApplied"] == null ? null : PriceAfterLoyaltyPointsApplied.fromJson(json["priceAfterLoyaltyPointsApplied"]),
    propertyFees: json["propertyFees"] == null ? [] : List<dynamic>.from(json["propertyFees"]!.map((x) => x)),
    reviews: json["reviews"] == null ? null : Reviews.fromJson(json["reviews"]),
    sponsoredListing: json["sponsoredListing"],
    star: json["star"],
    supportingMessages: json["supportingMessages"],
    regionId: json["regionId"],
    priceMetadata: json["priceMetadata"] == null ? null : PriceMetadata.fromJson(json["priceMetadata"]),
    saveTripItem: json["saveTripItem"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": propertyTypenameValues.reverse[typename],
    "id": id,
    "featuredMessages": featuredMessages == null ? [] : List<dynamic>.from(featuredMessages!.map((x) => x)),
    "name": name,
    "availability": availability?.toJson(),
    "propertyImage": propertyImage?.toJson(),
    "destinationInfo": destinationInfo?.toJson(),
    "legalDisclaimer": legalDisclaimer,
    "listingFooter": listingFooter,
    "mapMarker": mapMarker?.toJson(),
    "neighborhood": neighborhood?.toJson(),
    "offerBadge": offerBadge?.toJson(),
    "offerSummary": offerSummary?.toJson(),
    "pinnedDetails": pinnedDetails,
    "price": price?.toJson(),
    "priceAfterLoyaltyPointsApplied": priceAfterLoyaltyPointsApplied?.toJson(),
    "propertyFees": propertyFees == null ? [] : List<dynamic>.from(propertyFees!.map((x) => x)),
    "reviews": reviews?.toJson(),
    "sponsoredListing": sponsoredListing,
    "star": star,
    "supportingMessages": supportingMessages,
    "regionId": regionId,
    "priceMetadata": priceMetadata?.toJson(),
    "saveTripItem": saveTripItem,
  };
}

class Availability {
  AvailabilityTypename typename;
  bool available;
  int? minRoomsLeft;

  Availability({
    required this.typename,
    required this.available,
    required this.minRoomsLeft,
  });

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
    typename: availabilityTypenameValues.map[json["__typename"]]!,
    available: json["available"],
    minRoomsLeft: json["minRoomsLeft"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": availabilityTypenameValues.reverse[typename],
    "available": available,
    "minRoomsLeft": minRoomsLeft,
  };
}

enum AvailabilityTypename {
  PROPERTY_AVAILABILITY
}

final availabilityTypenameValues = EnumValues({
  "PropertyAvailability": AvailabilityTypename.PROPERTY_AVAILABILITY
});

class DestinationInfo {
  DestinationInfoTypename typename;
  DistanceFromDestination distanceFromDestination;
  dynamic distanceFromMessaging;
  String regionId;

  DestinationInfo({
    required this.typename,
    required this.distanceFromDestination,
    required this.distanceFromMessaging,
    required this.regionId,
  });

  factory DestinationInfo.fromJson(Map<String, dynamic> json) => DestinationInfo(
    typename: destinationInfoTypenameValues.map[json["__typename"]]!,
    distanceFromDestination: DistanceFromDestination.fromJson(json["distanceFromDestination"]),
    distanceFromMessaging: json["distanceFromMessaging"],
    regionId: json["regionId"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": destinationInfoTypenameValues.reverse[typename],
    "distanceFromDestination": distanceFromDestination.toJson(),
    "distanceFromMessaging": distanceFromMessaging,
    "regionId": regionId,
  };
}

class DistanceFromDestination {
  DistanceFromDestinationTypename typename;
  Unit unit;
  double value;

  DistanceFromDestination({
    required this.typename,
    required this.unit,
    required this.value,
  });

  factory DistanceFromDestination.fromJson(Map<String, dynamic> json) => DistanceFromDestination(
    typename: distanceFromDestinationTypenameValues.map[json["__typename"]]!,
    unit: unitValues.map[json["unit"]]!,
    value: json["value"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "__typename": distanceFromDestinationTypenameValues.reverse[typename],
    "unit": unitValues.reverse[unit],
    "value": value,
  };
}

enum DistanceFromDestinationTypename {
  DISTANCE
}

final distanceFromDestinationTypenameValues = EnumValues({
  "Distance": DistanceFromDestinationTypename.DISTANCE
});

enum Unit {
  MILE
}

final unitValues = EnumValues({
  "MILE": Unit.MILE
});

enum DestinationInfoTypename {
  PROPERTY_DESTINATION_INFO
}

final destinationInfoTypenameValues = EnumValues({
  "PropertyDestinationInfo": DestinationInfoTypename.PROPERTY_DESTINATION_INFO
});

class MapMarker {
  MapMarkerTypename typename;
  String label;
  LatLong latLong;

  MapMarker({
    required this.typename,
    required this.label,
    required this.latLong,
  });

  factory MapMarker.fromJson(Map<String, dynamic> json) => MapMarker(
    typename: mapMarkerTypenameValues.map[json["__typename"]]!,
    label: json["label"],
    latLong: LatLong.fromJson(json["latLong"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": mapMarkerTypenameValues.reverse[typename],
    "label": label,
    "latLong": latLong.toJson(),
  };
}

class LatLong {
  LatLongTypename typename;
  double latitude;
  double longitude;

  LatLong({
    required this.typename,
    required this.latitude,
    required this.longitude,
  });

  factory LatLong.fromJson(Map<String, dynamic> json) => LatLong(
    typename: latLongTypenameValues.map[json["__typename"]]!,
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "__typename": latLongTypenameValues.reverse[typename],
    "latitude": latitude,
    "longitude": longitude,
  };
}

enum LatLongTypename {
  COORDINATES
}

final latLongTypenameValues = EnumValues({
  "Coordinates": LatLongTypename.COORDINATES
});

enum MapMarkerTypename {
  MAP_MARKER
}

final mapMarkerTypenameValues = EnumValues({
  "MapMarker": MapMarkerTypename.MAP_MARKER
});

class PropertyNeighborhood {
  FluffyTypename typename;
  Name name;

  PropertyNeighborhood({
    required this.typename,
    required this.name,
  });

  factory PropertyNeighborhood.fromJson(Map<String, dynamic> json) => PropertyNeighborhood(
    typename: fluffyTypenameValues.map[json["__typename"]]!,
    name: nameValues.map[json["name"]]!,
  );

  Map<String, dynamic> toJson() => {
    "__typename": fluffyTypenameValues.reverse[typename],
    "name": nameValues.reverse[name],
  };
}

enum Name {
  NHA_TRANG,
  TRAN_PHU_BEACH
}

final nameValues = EnumValues({
  "Nha Trang": Name.NHA_TRANG,
  "Tran Phu Beach": Name.TRAN_PHU_BEACH
});

enum FluffyTypename {
  REGION
}

final fluffyTypenameValues = EnumValues({
  "Region": FluffyTypename.REGION
});

class OfferBadge {
  OfferBadgeTypename typename;
  Ary primary;
  Ary secondary;

  OfferBadge({
    required this.typename,
    required this.primary,
    required this.secondary,
  });

  factory OfferBadge.fromJson(Map<String, dynamic> json) => OfferBadge(
    typename: offerBadgeTypenameValues.map[json["__typename"]]!,
    primary: Ary.fromJson(json["primary"]),
    secondary: Ary.fromJson(json["secondary"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": offerBadgeTypenameValues.reverse[typename],
    "primary": primary.toJson(),
    "secondary": secondary.toJson(),
  };
}

class Ary {
  PrimaryTypename typename;
  String text;
  ThemeTemp themeTemp;
  IconTemp? iconTemp;
  dynamic mark;

  Ary({
    required this.typename,
    required this.text,
    required this.themeTemp,
    required this.iconTemp,
    required this.mark,
  });

  factory Ary.fromJson(Map<String, dynamic> json) => Ary(
    typename: primaryTypenameValues.map[json["__typename"]]!,
    text: json["text"],
    themeTemp: themeTempValues.map[json["theme_temp"]]!,
    iconTemp: json["icon_temp"] == null ? null : IconTemp.fromJson(json["icon_temp"]),
    mark: json["mark"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": primaryTypenameValues.reverse[typename],
    "text": text,
    "theme_temp": themeTempValues.reverse[themeTemp],
    "icon_temp": iconTemp?.toJson(),
    "mark": mark,
  };
}

class IconTemp {
  IconTempTypename typename;
  IdEnum id;
  IdEnum description;

  IconTemp({
    required this.typename,
    required this.id,
    required this.description,
  });

  factory IconTemp.fromJson(Map<String, dynamic> json) => IconTemp(
    typename: iconTempTypenameValues.map[json["__typename"]]!,
    id: idEnumValues.map[json["id"]]!,
    description: idEnumValues.map[json["description"]]!,
  );

  Map<String, dynamic> toJson() => {
    "__typename": iconTempTypenameValues.reverse[typename],
    "id": idEnumValues.reverse[id],
    "description": idEnumValues.reverse[description],
  };
}

enum IdEnum {
  MOD,
  SMARTPHONE
}

final idEnumValues = EnumValues({
  "mod": IdEnum.MOD,
  "smartphone": IdEnum.SMARTPHONE
});

enum IconTempTypename {
  ICON
}

final iconTempTypenameValues = EnumValues({
  "Icon": IconTempTypename.ICON
});

enum ThemeTemp {
  DEAL_GENERIC,
  DEAL_MEMBER,
  VIP
}

final themeTempValues = EnumValues({
  "DEAL_GENERIC": ThemeTemp.DEAL_GENERIC,
  "DEAL_MEMBER": ThemeTemp.DEAL_MEMBER,
  "VIP": ThemeTemp.VIP
});

enum PrimaryTypename {
  BADGE
}

final primaryTypenameValues = EnumValues({
  "Badge": PrimaryTypename.BADGE
});

enum OfferBadgeTypename {
  OFFER_BADGE
}

final offerBadgeTypenameValues = EnumValues({
  "OfferBadge": OfferBadgeTypename.OFFER_BADGE
});

class OfferSummary {
  OfferSummaryTypename typename;
  List<Message> messages;
  List<PricingScheme> attributes;

  OfferSummary({
    required this.typename,
    required this.messages,
    required this.attributes,
  });

  factory OfferSummary.fromJson(Map<String, dynamic> json) => OfferSummary(
    typename: offerSummaryTypenameValues.map[json["__typename"]]!,
    messages: List<Message>.from(json["messages"].map((x) => Message.fromJson(x))),
    attributes: List<PricingScheme>.from(json["attributes"].map((x) => PricingScheme.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": offerSummaryTypenameValues.reverse[typename],
    "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
    "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
  };
}

class PricingScheme {
  PricingSchemeTypename typename;
  String type;

  PricingScheme({
    required this.typename,
    required this.type,
  });

  factory PricingScheme.fromJson(Map<String, dynamic> json) => PricingScheme(
    typename: pricingSchemeTypenameValues.map[json["__typename"]]!,
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": pricingSchemeTypenameValues.reverse[typename],
    "type": type,
  };
}

enum PricingSchemeTypename {
  OFFER_ATTRIBUTE,
  PRICING_SCHEME
}

final pricingSchemeTypenameValues = EnumValues({
  "OfferAttribute": PricingSchemeTypename.OFFER_ATTRIBUTE,
  "PricingScheme": PricingSchemeTypename.PRICING_SCHEME
});

class Message {
  String typename;
  String message;
  String theme;
  String type;
  dynamic mark;

  Message({
    required this.typename,
    required this.message,
    required this.theme,
    required this.type,
    required this.mark,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    typename: json["__typename"],
    message: json["message"],
    theme: json["theme"],
    type: json["type"],
    mark: json["mark"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "message": message,
    "theme": theme,
    "type": type,
    "mark": mark,
  };
}

enum OfferSummaryTypename {
  OFFER_SUMMARY
}

final offerSummaryTypenameValues = EnumValues({
  "OfferSummary": OfferSummaryTypename.OFFER_SUMMARY
});

class PropertyPrice {
  PriceAfterLoyaltyPointsAppliedTypename typename;
  List<PriceOption> options;
  dynamic priceMessaging;
  Lead lead;
  Lead strikeOut;
  List<DisplayMessage> displayMessages;
  StrikeOutType strikeOutType;
  List<PriceMessage> priceMessages;

  PropertyPrice({
    required this.typename,
    required this.options,
    required this.priceMessaging,
    required this.lead,
    required this.strikeOut,
    required this.displayMessages,
    required this.strikeOutType,
    required this.priceMessages,
  });

  factory PropertyPrice.fromJson(Map<String, dynamic> json) => PropertyPrice(
    typename: priceAfterLoyaltyPointsAppliedTypenameValues.map[json["__typename"]]!,
    options: List<PriceOption>.from(json["options"].map((x) => PriceOption.fromJson(x))),
    priceMessaging: json["priceMessaging"],
    lead: Lead.fromJson(json["lead"]),
    strikeOut: Lead.fromJson(json["strikeOut"]),
    displayMessages: List<DisplayMessage>.from(json["displayMessages"].map((x) => DisplayMessage.fromJson(x))),
    strikeOutType: strikeOutTypeValues.map[json["strikeOutType"]]!,
    priceMessages: List<PriceMessage>.from(json["priceMessages"].map((x) => PriceMessage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": priceAfterLoyaltyPointsAppliedTypenameValues.reverse[typename],
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "priceMessaging": priceMessaging,
    "lead": lead.toJson(),
    "strikeOut": strikeOut.toJson(),
    "displayMessages": List<dynamic>.from(displayMessages.map((x) => x.toJson())),
    "strikeOutType": strikeOutTypeValues.reverse[strikeOutType],
    "priceMessages": List<dynamic>.from(priceMessages.map((x) => x.toJson())),
  };
}

class DisplayMessage {
  DisplayMessageTypename typename;
  List<LineItem> lineItems;

  DisplayMessage({
    required this.typename,
    required this.lineItems,
  });

  factory DisplayMessage.fromJson(Map<String, dynamic> json) => DisplayMessage(
    typename: displayMessageTypenameValues.map[json["__typename"]]!,
    lineItems: List<LineItem>.from(json["lineItems"].map((x) => LineItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": displayMessageTypenameValues.reverse[typename],
    "lineItems": List<dynamic>.from(lineItems.map((x) => x.toJson())),
  };
}

class LineItem {
  LineItemTypename typename;
  Disclaimer? disclaimer;
  LineItemPrice? price;
  Role? role;
  dynamic accessibilityLabel;
  dynamic mark;
  dynamic state;
  String? value;
  dynamic badge;

  LineItem({
    required this.typename,
    this.disclaimer,
    this.price,
    this.role,
    this.accessibilityLabel,
    this.mark,
    this.state,
    this.value,
    this.badge,
  });

  factory LineItem.fromJson(Map<String, dynamic> json) => LineItem(
    typename: lineItemTypenameValues.map[json["__typename"]]!,
    disclaimer: json["disclaimer"] == null ? null : Disclaimer.fromJson(json["disclaimer"]),
    price: json["price"] == null ? null : LineItemPrice.fromJson(json["price"]),
    role: roleValues.map[json["role"]]!,
    accessibilityLabel: json["accessibilityLabel"],
    mark: json["mark"],
    state: json["state"],
    value: json["value"],
    badge: json["badge"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": lineItemTypenameValues.reverse[typename],
    "disclaimer": disclaimer?.toJson(),
    "price": price?.toJson(),
    "role": roleValues.reverse[role],
    "accessibilityLabel": accessibilityLabel,
    "mark": mark,
    "state": state,
    "value": value,
    "badge": badge,
  };
}

class Disclaimer {
  TentacledTypename typename;
  List<String> content;
  dynamic title;

  Disclaimer({
    required this.typename,
    required this.content,
    required this.title,
  });

  factory Disclaimer.fromJson(Map<String, dynamic> json) => Disclaimer(
    typename: tentacledTypenameValues.map[json["__typename"]]!,
    content: List<String>.from(json["content"].map((x) => x)),
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": tentacledTypenameValues.reverse[typename],
    "content": List<dynamic>.from(content.map((x) => x)),
    "title": title,
  };
}

enum TentacledTypename {
  LODGING_PLAIN_DIALOG
}

final tentacledTypenameValues = EnumValues({
  "LodgingPlainDialog": TentacledTypename.LODGING_PLAIN_DIALOG
});

class LineItemPrice {
  StickyTypename typename;
  String formatted;
  String accessibilityLabel;

  LineItemPrice({
    required this.typename,
    required this.formatted,
    required this.accessibilityLabel,
  });

  factory LineItemPrice.fromJson(Map<String, dynamic> json) => LineItemPrice(
    typename: stickyTypenameValues.map[json["__typename"]]!,
    formatted: json["formatted"],
    accessibilityLabel: json["accessibilityLabel"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": stickyTypenameValues.reverse[typename],
    "formatted": formatted,
    "accessibilityLabel": accessibilityLabel,
  };
}

enum StickyTypename {
  FORMATTED_MONEY
}

final stickyTypenameValues = EnumValues({
  "FormattedMoney": StickyTypename.FORMATTED_MONEY
});

enum Role {
  LEAD,
  STRIKEOUT
}

final roleValues = EnumValues({
  "LEAD": Role.LEAD,
  "STRIKEOUT": Role.STRIKEOUT
});

enum LineItemTypename {
  DISPLAY_PRICE,
  LODGING_ENRICHED_MESSAGE
}

final lineItemTypenameValues = EnumValues({
  "DisplayPrice": LineItemTypename.DISPLAY_PRICE,
  "LodgingEnrichedMessage": LineItemTypename.LODGING_ENRICHED_MESSAGE
});

enum DisplayMessageTypename {
  PRICE_DISPLAY_MESSAGE
}

final displayMessageTypenameValues = EnumValues({
  "PriceDisplayMessage": DisplayMessageTypename.PRICE_DISPLAY_MESSAGE
});

class Lead {
  LeadTypename typename;
  double amount;
  CurrencyInfo? currencyInfo;
  String formatted;

  Lead({
    required this.typename,
    required this.amount,
    this.currencyInfo,
    required this.formatted,
  });

  factory Lead.fromJson(Map<String, dynamic> json) => Lead(
    typename: leadTypenameValues.map[json["__typename"]]!,
    amount: json["amount"]?.toDouble(),
    currencyInfo: json["currencyInfo"] == null ? null : CurrencyInfo.fromJson(json["currencyInfo"]),
    formatted: json["formatted"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": leadTypenameValues.reverse[typename],
    "amount": amount,
    "currencyInfo": currencyInfo?.toJson(),
    "formatted": formatted,
  };
}

class CurrencyInfo {
  CurrencyInfoTypename typename;
  Code code;
  Symbol symbol;

  CurrencyInfo({
    required this.typename,
    required this.code,
    required this.symbol,
  });

  factory CurrencyInfo.fromJson(Map<String, dynamic> json) => CurrencyInfo(
    typename: currencyInfoTypenameValues.map[json["__typename"]]!,
    code: codeValues.map[json["code"]]!,
    symbol: symbolValues.map[json["symbol"]]!,
  );

  Map<String, dynamic> toJson() => {
    "__typename": currencyInfoTypenameValues.reverse[typename],
    "code": codeValues.reverse[code],
    "symbol": symbolValues.reverse[symbol],
  };
}

enum Code {
  USD
}

final codeValues = EnumValues({
  "USD": Code.USD
});

enum Symbol {
  EMPTY
}

final symbolValues = EnumValues({
  "\u0024": Symbol.EMPTY
});

enum CurrencyInfoTypename {
  CURRENCY
}

final currencyInfoTypenameValues = EnumValues({
  "Currency": CurrencyInfoTypename.CURRENCY
});

enum LeadTypename {
  MONEY
}

final leadTypenameValues = EnumValues({
  "Money": LeadTypename.MONEY
});

class PriceOption {
  IndigoTypename typename;
  Lead strikeOut;
  PriceMessage disclaimer;
  String formattedDisplayPrice;

  PriceOption({
    required this.typename,
    required this.strikeOut,
    required this.disclaimer,
    required this.formattedDisplayPrice,
  });

  factory PriceOption.fromJson(Map<String, dynamic> json) => PriceOption(
    typename: indigoTypenameValues.map[json["__typename"]]!,
    strikeOut: Lead.fromJson(json["strikeOut"]),
    disclaimer: PriceMessage.fromJson(json["disclaimer"]),
    formattedDisplayPrice: json["formattedDisplayPrice"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": indigoTypenameValues.reverse[typename],
    "strikeOut": strikeOut.toJson(),
    "disclaimer": disclaimer.toJson(),
    "formattedDisplayPrice": formattedDisplayPrice,
  };
}

class PriceMessage {
  PriceMessageTypename typename;
  String value;

  PriceMessage({
    required this.typename,
    required this.value,
  });

  factory PriceMessage.fromJson(Map<String, dynamic> json) => PriceMessage(
    typename: priceMessageTypenameValues.map[json["__typename"]]!,
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": priceMessageTypenameValues.reverse[typename],
    "value": value,
  };
}

enum PriceMessageTypename {
  HTTP_URI,
  LODGING_PLAIN_MESSAGE
}

final priceMessageTypenameValues = EnumValues({
  "HttpURI": PriceMessageTypename.HTTP_URI,
  "LodgingPlainMessage": PriceMessageTypename.LODGING_PLAIN_MESSAGE
});

enum IndigoTypename {
  PROPERTY_PRICE_OPTION
}

final indigoTypenameValues = EnumValues({
  "PropertyPriceOption": IndigoTypename.PROPERTY_PRICE_OPTION
});

enum StrikeOutType {
  STANDALONE
}

final strikeOutTypeValues = EnumValues({
  "STANDALONE": StrikeOutType.STANDALONE
});

enum PriceAfterLoyaltyPointsAppliedTypename {
  PROPERTY_PRICE
}

final priceAfterLoyaltyPointsAppliedTypenameValues = EnumValues({
  "PropertyPrice": PriceAfterLoyaltyPointsAppliedTypename.PROPERTY_PRICE
});

class PriceAfterLoyaltyPointsApplied {
  PriceAfterLoyaltyPointsAppliedTypename typename;
  List<PriceOption> options;
  Lead lead;

  PriceAfterLoyaltyPointsApplied({
    required this.typename,
    required this.options,
    required this.lead,
  });

  factory PriceAfterLoyaltyPointsApplied.fromJson(Map<String, dynamic> json) => PriceAfterLoyaltyPointsApplied(
    typename: priceAfterLoyaltyPointsAppliedTypenameValues.map[json["__typename"]]!,
    options: List<PriceOption>.from(json["options"].map((x) => PriceOption.fromJson(x))),
    lead: Lead.fromJson(json["lead"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": priceAfterLoyaltyPointsAppliedTypenameValues.reverse[typename],
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "lead": lead.toJson(),
  };
}

class PriceMetadata {
  PriceMetadataTypename typename;
  DiscountType discountType;
  RateDiscount rateDiscount;
  int totalDiscountPercentage;

  PriceMetadata({
    required this.typename,
    required this.discountType,
    required this.rateDiscount,
    required this.totalDiscountPercentage,
  });

  factory PriceMetadata.fromJson(Map<String, dynamic> json) => PriceMetadata(
    typename: priceMetadataTypenameValues.map[json["__typename"]]!,
    discountType: discountTypeValues.map[json["discountType"]]!,
    rateDiscount: RateDiscount.fromJson(json["rateDiscount"]),
    totalDiscountPercentage: json["totalDiscountPercentage"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": priceMetadataTypenameValues.reverse[typename],
    "discountType": discountTypeValues.reverse[discountType],
    "rateDiscount": rateDiscount.toJson(),
    "totalDiscountPercentage": totalDiscountPercentage,
  };
}

enum DiscountType {
  MEMBER_DEAL,
  MOBILE_EXCLUSIVE
}

final discountTypeValues = EnumValues({
  "MEMBER_DEAL": DiscountType.MEMBER_DEAL,
  "MOBILE_EXCLUSIVE": DiscountType.MOBILE_EXCLUSIVE
});

class RateDiscount {
  RateDiscountTypename typename;
  String description;

  RateDiscount({
    required this.typename,
    required this.description,
  });

  factory RateDiscount.fromJson(Map<String, dynamic> json) => RateDiscount(
    typename: rateDiscountTypenameValues.map[json["__typename"]]!,
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": rateDiscountTypenameValues.reverse[typename],
    "description": description,
  };
}

enum RateDiscountTypename {
  RATE_DISCOUNT
}

final rateDiscountTypenameValues = EnumValues({
  "RateDiscount": RateDiscountTypename.RATE_DISCOUNT
});

enum PriceMetadataTypename {
  PROPERTY_PRICE_METADATA
}

final priceMetadataTypenameValues = EnumValues({
  "PropertyPriceMetadata": PriceMetadataTypename.PROPERTY_PRICE_METADATA
});

class PropertyImage {
  PropertyImageTypename typename;
  String alt;
  dynamic fallbackImage;
  Image image;
  int subjectId;

  PropertyImage({
    required this.typename,
    required this.alt,
    required this.fallbackImage,
    required this.image,
    required this.subjectId,
  });

  factory PropertyImage.fromJson(Map<String, dynamic> json) => PropertyImage(
    typename: propertyImageTypenameValues.map[json["__typename"]]!,
    alt: json["alt"],
    fallbackImage: json["fallbackImage"],
    image: Image.fromJson(json["image"]),
    subjectId: json["subjectId"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": propertyImageTypenameValues.reverse[typename],
    "alt": alt,
    "fallbackImage": fallbackImage,
    "image": image.toJson(),
    "subjectId": subjectId,
  };
}

class Image {
  ImageTypename typename;
  String description;
  String url;

  Image({
    required this.typename,
    required this.description,
    required this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    typename: imageTypenameValues.map[json["__typename"]]!,
    description: json["description"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": imageTypenameValues.reverse[typename],
    "description": description,
    "url": url,
  };
}

enum ImageTypename {
  IMAGE
}

final imageTypenameValues = EnumValues({
  "Image": ImageTypename.IMAGE
});

enum PropertyImageTypename {
  PROPERTY_IMAGE
}

final propertyImageTypenameValues = EnumValues({
  "PropertyImage": PropertyImageTypename.PROPERTY_IMAGE
});

class Reviews {
  ReviewsTypename typename;
  double score;
  int total;

  Reviews({
    required this.typename,
    required this.score,
    required this.total,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
    typename: reviewsTypenameValues.map[json["__typename"]]!,
    score: json["score"]?.toDouble(),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": reviewsTypenameValues.reverse[typename],
    "score": score,
    "total": total,
  };
}

enum ReviewsTypename {
  PROPERTY_REVIEWS_SUMMARY
}

final reviewsTypenameValues = EnumValues({
  "PropertyReviewsSummary": ReviewsTypename.PROPERTY_REVIEWS_SUMMARY
});

enum PropertyTypename {
  LODGING_CARD,
  PROPERTY
}

final propertyTypenameValues = EnumValues({
  "LodgingCard": PropertyTypename.LODGING_CARD,
  "Property": PropertyTypename.PROPERTY
});

class SearchCriteria {
  String typename;
  ResolvedDateRange resolvedDateRange;

  SearchCriteria({
    required this.typename,
    required this.resolvedDateRange,
  });

  factory SearchCriteria.fromJson(Map<String, dynamic> json) => SearchCriteria(
    typename: json["__typename"],
    resolvedDateRange: ResolvedDateRange.fromJson(json["resolvedDateRange"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "resolvedDateRange": resolvedDateRange.toJson(),
  };
}

class ResolvedDateRange {
  String typename;
  CheckDate checkInDate;
  CheckDate checkOutDate;

  ResolvedDateRange({
    required this.typename,
    required this.checkInDate,
    required this.checkOutDate,
  });

  factory ResolvedDateRange.fromJson(Map<String, dynamic> json) => ResolvedDateRange(
    typename: json["__typename"],
    checkInDate: CheckDate.fromJson(json["checkInDate"]),
    checkOutDate: CheckDate.fromJson(json["checkOutDate"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "checkInDate": checkInDate.toJson(),
    "checkOutDate": checkOutDate.toJson(),
  };
}

class CheckDate {
  String typename;
  int day;
  int month;
  int year;

  CheckDate({
    required this.typename,
    required this.day,
    required this.month,
    required this.year,
  });

  factory CheckDate.fromJson(Map<String, dynamic> json) => CheckDate(
    typename: json["__typename"],
    day: json["day"],
    month: json["month"],
    year: json["year"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "day": day,
    "month": month,
    "year": year,
  };
}

class ShoppingContext {
  String typename;
  dynamic multiItem;

  ShoppingContext({
    required this.typename,
    required this.multiItem,
  });

  factory ShoppingContext.fromJson(Map<String, dynamic> json) => ShoppingContext(
    typename: json["__typename"],
    multiItem: json["multiItem"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "multiItem": multiItem,
  };
}

class Summary {
  String typename;
  int matchedPropertiesSize;
  PricingScheme pricingScheme;
  dynamic regionCompression;
  LoyaltyInfo loyaltyInfo;
  ResultsTitleModel resultsTitleModel;
  List<ResultsSummary> resultsSummary;

  Summary({
    required this.typename,
    required this.matchedPropertiesSize,
    required this.pricingScheme,
    required this.regionCompression,
    required this.loyaltyInfo,
    required this.resultsTitleModel,
    required this.resultsSummary,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    typename: json["__typename"],
    matchedPropertiesSize: json["matchedPropertiesSize"],
    pricingScheme: PricingScheme.fromJson(json["pricingScheme"]),
    regionCompression: json["regionCompression"],
    loyaltyInfo: LoyaltyInfo.fromJson(json["loyaltyInfo"]),
    resultsTitleModel: ResultsTitleModel.fromJson(json["resultsTitleModel"]),
    resultsSummary: List<ResultsSummary>.from(json["resultsSummary"].map((x) => ResultsSummary.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "matchedPropertiesSize": matchedPropertiesSize,
    "pricingScheme": pricingScheme.toJson(),
    "regionCompression": regionCompression,
    "loyaltyInfo": loyaltyInfo.toJson(),
    "resultsTitleModel": resultsTitleModel.toJson(),
    "resultsSummary": List<dynamic>.from(resultsSummary.map((x) => x.toJson())),
  };
}

class LoyaltyInfo {
  String typename;
  dynamic saveWithPointsMessage;
  dynamic saveWithPointsActionMessage;

  LoyaltyInfo({
    required this.typename,
    required this.saveWithPointsMessage,
    required this.saveWithPointsActionMessage,
  });

  factory LoyaltyInfo.fromJson(Map<String, dynamic> json) => LoyaltyInfo(
    typename: json["__typename"],
    saveWithPointsMessage: json["saveWithPointsMessage"],
    saveWithPointsActionMessage: json["saveWithPointsActionMessage"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "saveWithPointsMessage": saveWithPointsMessage,
    "saveWithPointsActionMessage": saveWithPointsActionMessage,
  };
}

class ResultsSummary {
  String typename;
  String? accessibilityLabel;
  String? value;
  Link? link;

  ResultsSummary({
    required this.typename,
    this.accessibilityLabel,
    this.value,
    this.link,
  });

  factory ResultsSummary.fromJson(Map<String, dynamic> json) => ResultsSummary(
    typename: json["__typename"],
    accessibilityLabel: json["accessibilityLabel"],
    value: json["value"],
    link: json["link"] == null ? null : Link.fromJson(json["link"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "accessibilityLabel": accessibilityLabel,
    "value": value,
    "link": link?.toJson(),
  };
}

class Link {
  String typename;
  Analytics clientSideAnalytics;
  PriceMessage uri;

  Link({
    required this.typename,
    required this.clientSideAnalytics,
    required this.uri,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    typename: json["__typename"],
    clientSideAnalytics: Analytics.fromJson(json["clientSideAnalytics"]),
    uri: PriceMessage.fromJson(json["uri"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "clientSideAnalytics": clientSideAnalytics.toJson(),
    "uri": uri.toJson(),
  };
}

class Analytics {
  AnalyticsTypename typename;
  String linkName;
  String referrerId;

  Analytics({
    required this.typename,
    required this.linkName,
    required this.referrerId,
  });

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
    typename: analyticsTypenameValues.map[json["__typename"]]!,
    linkName: json["linkName"],
    referrerId: json["referrerId"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": analyticsTypenameValues.reverse[typename],
    "linkName": linkName,
    "referrerId": referrerId,
  };
}

enum AnalyticsTypename {
  CLIENT_SIDE_ANALYTICS
}

final analyticsTypenameValues = EnumValues({
  "ClientSideAnalytics": AnalyticsTypename.CLIENT_SIDE_ANALYTICS
});

class ResultsTitleModel {
  String typename;
  String header;

  ResultsTitleModel({
    required this.typename,
    required this.header,
  });

  factory ResultsTitleModel.fromJson(Map<String, dynamic> json) => ResultsTitleModel(
    typename: json["__typename"],
    header: json["header"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "header": header,
  };
}

class UniversalSortAndFilter {
  String typename;
  Toolbar toolbar;
  Action revealAction;
  Action applyAction;
  List<FilterSection> filterSections;
  List<SortSection> sortSections;

  UniversalSortAndFilter({
    required this.typename,
    required this.toolbar,
    required this.revealAction,
    required this.applyAction,
    required this.filterSections,
    required this.sortSections,
  });

  factory UniversalSortAndFilter.fromJson(Map<String, dynamic> json) => UniversalSortAndFilter(
    typename: json["__typename"],
    toolbar: Toolbar.fromJson(json["toolbar"]),
    revealAction: Action.fromJson(json["revealAction"]),
    applyAction: Action.fromJson(json["applyAction"]),
    filterSections: List<FilterSection>.from(json["filterSections"].map((x) => FilterSection.fromJson(x))),
    sortSections: List<SortSection>.from(json["sortSections"].map((x) => SortSection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "toolbar": toolbar.toJson(),
    "revealAction": revealAction.toJson(),
    "applyAction": applyAction.toJson(),
    "filterSections": List<dynamic>.from(filterSections.map((x) => x.toJson())),
    "sortSections": List<dynamic>.from(sortSections.map((x) => x.toJson())),
  };
}

class Action {
  String typename;
  String primary;
  ActionClass action;
  String accessibility;
  int? badge;
  bool disabled;
  Icon? icon;

  Action({
    required this.typename,
    required this.primary,
    required this.action,
    required this.accessibility,
    required this.badge,
    required this.disabled,
    required this.icon,
  });

  factory Action.fromJson(Map<String, dynamic> json) => Action(
    typename: json["__typename"],
    primary: json["primary"],
    action: ActionClass.fromJson(json["action"]),
    accessibility: json["accessibility"],
    badge: json["badge"],
    disabled: json["disabled"],
    icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "action": action.toJson(),
    "accessibility": accessibility,
    "badge": badge,
    "disabled": disabled,
    "icon": icon?.toJson(),
  };
}

class ActionClass {
  String typename;
  String actionType;
  String? accessibility;
  Analytics analytics;

  ActionClass({
    required this.typename,
    required this.actionType,
    required this.accessibility,
    required this.analytics,
  });

  factory ActionClass.fromJson(Map<String, dynamic> json) => ActionClass(
    typename: json["__typename"],
    actionType: json["actionType"],
    accessibility: json["accessibility"],
    analytics: Analytics.fromJson(json["analytics"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "actionType": actionType,
    "accessibility": accessibility,
    "analytics": analytics.toJson(),
  };
}

class Icon {
  IconTempTypename typename;
  String id;
  IconDescription description;
  dynamic size;
  String token;
  dynamic theme;

  Icon({
    required this.typename,
    required this.id,
    required this.description,
    required this.size,
    required this.token,
    required this.theme,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
    typename: iconTempTypenameValues.map[json["__typename"]]!,
    id: json["id"],
    description: iconDescriptionValues.map[json["description"]]!,
    size: json["size"],
    token: json["token"],
    theme: json["theme"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": iconTempTypenameValues.reverse[typename],
    "id": id,
    "description": iconDescriptionValues.reverse[description],
    "size": size,
    "token": token,
    "theme": theme,
  };
}

enum IconDescription {
  EMPTY,
  MAGNIFYING_GLASS,
  REVEALS_SORT_AND_FILTER_WINDOW,
  STAR
}

final iconDescriptionValues = EnumValues({
  "": IconDescription.EMPTY,
  "magnifying glass": IconDescription.MAGNIFYING_GLASS,
  "reveals sort and filter window": IconDescription.REVEALS_SORT_AND_FILTER_WINDOW,
  "star": IconDescription.STAR
});

class FilterSection {
  String typename;
  String title;
  List<FilterSectionField> fields;

  FilterSection({
    required this.typename,
    required this.title,
    required this.fields,
  });

  factory FilterSection.fromJson(Map<String, dynamic> json) => FilterSection(
    typename: json["__typename"],
    title: json["title"],
    fields: List<FilterSectionField>.from(json["fields"].map((x) => FilterSectionField.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "title": title,
    "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
  };
}

class FilterSectionField {
  String typename;
  String? primary;
  dynamic secondary;
  ActionClass? action;
  String? id;
  dynamic label;
  String? placeholder;
  dynamic selected;
  TypeaheadInfo? typeaheadInfo;
  Icon? icon;
  Analytics? analytics;
  Expando? expando;
  List<DropdownFilterOptionElement>? multiSelectionOptions;
  Range? range;
  List<DropdownFilterOptionElement>? options;
  List<DropdownFilterOptionElement>? tileMultiSelectionOptions;

  FilterSectionField({
    required this.typename,
    required this.primary,
    required this.secondary,
    this.action,
    this.id,
    this.label,
    this.placeholder,
    this.selected,
    this.typeaheadInfo,
    this.icon,
    this.analytics,
    this.expando,
    this.multiSelectionOptions,
    this.range,
    this.options,
    this.tileMultiSelectionOptions,
  });

  factory FilterSectionField.fromJson(Map<String, dynamic> json) => FilterSectionField(
    typename: json["__typename"],
    primary: json["primary"],
    secondary: json["secondary"],
    action: json["action"] == null ? null : ActionClass.fromJson(json["action"]),
    id: json["id"],
    label: json["label"],
    placeholder: json["placeholder"],
    selected: json["selected"],
    typeaheadInfo: json["typeaheadInfo"] == null ? null : TypeaheadInfo.fromJson(json["typeaheadInfo"]),
    icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
    analytics: json["analytics"] == null ? null : Analytics.fromJson(json["analytics"]),
    expando: json["expando"] == null ? null : Expando.fromJson(json["expando"]),
    multiSelectionOptions: json["multiSelectionOptions"] == null ? [] : List<DropdownFilterOptionElement>.from(json["multiSelectionOptions"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
    range: json["range"] == null ? null : Range.fromJson(json["range"]),
    options: json["options"] == null ? [] : List<DropdownFilterOptionElement>.from(json["options"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
    tileMultiSelectionOptions: json["tileMultiSelectionOptions"] == null ? [] : List<DropdownFilterOptionElement>.from(json["tileMultiSelectionOptions"]!.map((x) => DropdownFilterOptionElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "secondary": secondary,
    "action": action?.toJson(),
    "id": id,
    "label": label,
    "placeholder": placeholder,
    "selected": selected,
    "typeaheadInfo": typeaheadInfo?.toJson(),
    "icon": icon?.toJson(),
    "analytics": analytics?.toJson(),
    "expando": expando?.toJson(),
    "multiSelectionOptions": multiSelectionOptions == null ? [] : List<dynamic>.from(multiSelectionOptions!.map((x) => x.toJson())),
    "range": range?.toJson(),
    "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
    "tileMultiSelectionOptions": tileMultiSelectionOptions == null ? [] : List<dynamic>.from(tileMultiSelectionOptions!.map((x) => x.toJson())),
  };
}

class Expando {
  ExpandoTypename typename;
  int threshold;
  CollapseLabel collapseLabel;
  ExpandLabel expandLabel;
  Analytics collapseAnalytics;
  Analytics expandAnalytics;

  Expando({
    required this.typename,
    required this.threshold,
    required this.collapseLabel,
    required this.expandLabel,
    required this.collapseAnalytics,
    required this.expandAnalytics,
  });

  factory Expando.fromJson(Map<String, dynamic> json) => Expando(
    typename: expandoTypenameValues.map[json["__typename"]]!,
    threshold: json["threshold"],
    collapseLabel: collapseLabelValues.map[json["collapseLabel"]]!,
    expandLabel: expandLabelValues.map[json["expandLabel"]]!,
    collapseAnalytics: Analytics.fromJson(json["collapseAnalytics"]),
    expandAnalytics: Analytics.fromJson(json["expandAnalytics"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": expandoTypenameValues.reverse[typename],
    "threshold": threshold,
    "collapseLabel": collapseLabelValues.reverse[collapseLabel],
    "expandLabel": expandLabelValues.reverse[expandLabel],
    "collapseAnalytics": collapseAnalytics.toJson(),
    "expandAnalytics": expandAnalytics.toJson(),
  };
}

enum CollapseLabel {
  SEE_LESS
}

final collapseLabelValues = EnumValues({
  "See less": CollapseLabel.SEE_LESS
});

enum ExpandLabel {
  SEE_MORE
}

final expandLabelValues = EnumValues({
  "See more": ExpandLabel.SEE_MORE
});

enum ExpandoTypename {
  SHOPPING_SELECTION_EXPANDO
}

final expandoTypenameValues = EnumValues({
  "ShoppingSelectionExpando": ExpandoTypename.SHOPPING_SELECTION_EXPANDO
});

class DropdownFilterOptionElement {
  DropdownFilterOptionTypename typename;
  String id;
  String primary;
  dynamic secondary;
  Icon? icon;
  Analytics analytics;
  String value;
  String? description;
  bool selected;
  bool disabled;
  bool optionDefault;
  Analytics selectAnalytics;
  Analytics deselectAnalytics;

  DropdownFilterOptionElement({
    required this.typename,
    required this.id,
    required this.primary,
    required this.secondary,
    required this.icon,
    required this.analytics,
    required this.value,
    required this.description,
    required this.selected,
    required this.disabled,
    required this.optionDefault,
    required this.selectAnalytics,
    required this.deselectAnalytics,
  });

  factory DropdownFilterOptionElement.fromJson(Map<String, dynamic> json) => DropdownFilterOptionElement(
    typename: dropdownFilterOptionTypenameValues.map[json["__typename"]]!,
    id: json["id"],
    primary: json["primary"],
    secondary: json["secondary"],
    icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
    analytics: Analytics.fromJson(json["analytics"]),
    value: json["value"],
    description: json["description"],
    selected: json["selected"],
    disabled: json["disabled"],
    optionDefault: json["default"],
    selectAnalytics: Analytics.fromJson(json["selectAnalytics"]),
    deselectAnalytics: Analytics.fromJson(json["deselectAnalytics"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": dropdownFilterOptionTypenameValues.reverse[typename],
    "id": id,
    "primary": primary,
    "secondary": secondary,
    "icon": icon?.toJson(),
    "analytics": analytics.toJson(),
    "value": value,
    "description": description,
    "selected": selected,
    "disabled": disabled,
    "default": optionDefault,
    "selectAnalytics": selectAnalytics.toJson(),
    "deselectAnalytics": deselectAnalytics.toJson(),
  };
}

enum DropdownFilterOptionTypename {
  SHOPPING_SELECTABLE_FILTER_OPTION
}

final dropdownFilterOptionTypenameValues = EnumValues({
  "ShoppingSelectableFilterOption": DropdownFilterOptionTypename.SHOPPING_SELECTABLE_FILTER_OPTION
});

class Range {
  String typename;
  String id;
  String primary;
  dynamic secondary;
  dynamic icon;
  Analytics analytics;
  PriceRange selected;
  Characteristics characteristics;

  Range({
    required this.typename,
    required this.id,
    required this.primary,
    required this.secondary,
    required this.icon,
    required this.analytics,
    required this.selected,
    required this.characteristics,
  });

  factory Range.fromJson(Map<String, dynamic> json) => Range(
    typename: json["__typename"],
    id: json["id"],
    primary: json["primary"],
    secondary: json["secondary"],
    icon: json["icon"],
    analytics: Analytics.fromJson(json["analytics"]),
    selected: PriceRange.fromJson(json["selected"]),
    characteristics: Characteristics.fromJson(json["characteristics"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "id": id,
    "primary": primary,
    "secondary": secondary,
    "icon": icon,
    "analytics": analytics.toJson(),
    "selected": selected.toJson(),
    "characteristics": characteristics.toJson(),
  };
}

class Characteristics {
  String typename;
  int min;
  int max;
  int step;
  List<Label> labels;

  Characteristics({
    required this.typename,
    required this.min,
    required this.max,
    required this.step,
    required this.labels,
  });

  factory Characteristics.fromJson(Map<String, dynamic> json) => Characteristics(
    typename: json["__typename"],
    min: json["min"],
    max: json["max"],
    step: json["step"],
    labels: List<Label>.from(json["labels"].map((x) => Label.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "min": min,
    "max": max,
    "step": step,
    "labels": List<dynamic>.from(labels.map((x) => x.toJson())),
  };
}

class Label {
  LabelTypename typename;
  String label;
  int value;

  Label({
    required this.typename,
    required this.label,
    required this.value,
  });

  factory Label.fromJson(Map<String, dynamic> json) => Label(
    typename: labelTypenameValues.map[json["__typename"]]!,
    label: json["label"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": labelTypenameValues.reverse[typename],
    "label": label,
    "value": value,
  };
}

enum LabelTypename {
  SHOPPING_RANGE_LABEL
}

final labelTypenameValues = EnumValues({
  "ShoppingRangeLabel": LabelTypename.SHOPPING_RANGE_LABEL
});

class TypeaheadInfo {
  String typename;
  String client;
  bool isDestination;
  String lineOfBusiness;
  int maxNumberOfResults;
  dynamic packageType;
  bool personalize;
  int regionType;
  String typeaheadFeatures;

  TypeaheadInfo({
    required this.typename,
    required this.client,
    required this.isDestination,
    required this.lineOfBusiness,
    required this.maxNumberOfResults,
    required this.packageType,
    required this.personalize,
    required this.regionType,
    required this.typeaheadFeatures,
  });

  factory TypeaheadInfo.fromJson(Map<String, dynamic> json) => TypeaheadInfo(
    typename: json["__typename"],
    client: json["client"],
    isDestination: json["isDestination"],
    lineOfBusiness: json["lineOfBusiness"],
    maxNumberOfResults: json["maxNumberOfResults"],
    packageType: json["packageType"],
    personalize: json["personalize"],
    regionType: json["regionType"],
    typeaheadFeatures: json["typeaheadFeatures"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "client": client,
    "isDestination": isDestination,
    "lineOfBusiness": lineOfBusiness,
    "maxNumberOfResults": maxNumberOfResults,
    "packageType": packageType,
    "personalize": personalize,
    "regionType": regionType,
    "typeaheadFeatures": typeaheadFeatures,
  };
}

class SortSection {
  String typename;
  dynamic title;
  List<SortSectionField> fields;

  SortSection({
    required this.typename,
    required this.title,
    required this.fields,
  });

  factory SortSection.fromJson(Map<String, dynamic> json) => SortSection(
    typename: json["__typename"],
    title: json["title"],
    fields: List<SortSectionField>.from(json["fields"].map((x) => SortSectionField.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "title": title,
    "fields": List<dynamic>.from(fields.map((x) => x.toJson())),
  };
}

class SortSectionField {
  String typename;
  String primary;
  dynamic secondary;
  List<DropdownFilterOptionElement> dropdownFilterOptions;

  SortSectionField({
    required this.typename,
    required this.primary,
    required this.secondary,
    required this.dropdownFilterOptions,
  });

  factory SortSectionField.fromJson(Map<String, dynamic> json) => SortSectionField(
    typename: json["__typename"],
    primary: json["primary"],
    secondary: json["secondary"],
    dropdownFilterOptions: List<DropdownFilterOptionElement>.from(json["dropdownFilterOptions"].map((x) => DropdownFilterOptionElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "secondary": secondary,
    "dropdownFilterOptions": List<dynamic>.from(dropdownFilterOptions.map((x) => x.toJson())),
  };
}

class Toolbar {
  String typename;
  String primary;
  Actions actions;

  Toolbar({
    required this.typename,
    required this.primary,
    required this.actions,
  });

  factory Toolbar.fromJson(Map<String, dynamic> json) => Toolbar(
    typename: json["__typename"],
    primary: json["primary"],
    actions: Actions.fromJson(json["actions"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "actions": actions.toJson(),
  };
}

class Actions {
  String typename;
  Primary primary;
  List<Secondary> secondaries;

  Actions({
    required this.typename,
    required this.primary,
    required this.secondaries,
  });

  factory Actions.fromJson(Map<String, dynamic> json) => Actions(
    typename: json["__typename"],
    primary: Primary.fromJson(json["primary"]),
    secondaries: List<Secondary>.from(json["secondaries"].map((x) => Secondary.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary.toJson(),
    "secondaries": List<dynamic>.from(secondaries.map((x) => x.toJson())),
  };
}

class Primary {
  String typename;
  dynamic primary;
  ActionClass action;

  Primary({
    required this.typename,
    required this.primary,
    required this.action,
  });

  factory Primary.fromJson(Map<String, dynamic> json) => Primary(
    typename: json["__typename"],
    primary: json["primary"],
    action: ActionClass.fromJson(json["action"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "action": action.toJson(),
  };
}

class Secondary {
  String typename;
  String primary;
  bool disabled;
  ActionClass action;

  Secondary({
    required this.typename,
    required this.primary,
    required this.disabled,
    required this.action,
  });

  factory Secondary.fromJson(Map<String, dynamic> json) => Secondary(
    typename: json["__typename"],
    primary: json["primary"],
    disabled: json["disabled"],
    action: ActionClass.fromJson(json["action"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "primary": primary,
    "disabled": disabled,
    "action": action.toJson(),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
