enum AddressType {
  STREET,
  STREET_NUMBER,
  CITY,
  STATE,
  COUNTRY,
  ZIP_CODE,
  COUNTY
}

extension AddressTypeExtension on AddressType {
  String get name {
    switch (this) {
      case AddressType.STREET:
        return 'street';
      case AddressType.STREET_NUMBER:
        return 'street_number';
      case AddressType.CITY:
        return 'city';
      case AddressType.STATE:
        return 'state';
      case AddressType.COUNTRY:
        return 'country';
      case AddressType.ZIP_CODE:
        return 'zip_code';
      case AddressType.COUNTY:
        return 'county';
      default:
        return 'unknown';
    }
  }
}

// Define the mapping from JSON keys to AddressType values
final jsonKeyToAddressType = {
  'street_number': AddressType.STREET_NUMBER,
  'administrative_area_level_1': AddressType.STATE,
  'administrative_area_level_2': AddressType.COUNTY,
  'locality': AddressType.CITY,
  'postal_code': AddressType.ZIP_CODE,
  'route': AddressType.STREET,
  'country': AddressType.COUNTRY,
};

// Function to parse a JSON key into an AddressType
AddressType? parseJsonKeyToAddressType(String jsonKey) {
  return jsonKeyToAddressType[jsonKey];
}
