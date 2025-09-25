class Farmer {
  final int? id;
  final String name;
  final String phone;
  final String panchayat;

  Farmer({
    this.id,
    required this.name,
    required this.phone,
    required this.panchayat,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'panchayat': panchayat,
    };
  }

  factory Farmer.fromMap(Map<String, dynamic> map) {
    return Farmer(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      panchayat: map['panchayat'],
    );
  }
}
