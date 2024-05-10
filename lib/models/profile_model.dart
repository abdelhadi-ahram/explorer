class ProfileModel {
  String id;
  String userId;
  String? firstName;
  String? lastName;
  String? avatarUrl;
  String? address;
  String? birthDate;
  String? gender;
  String? role;

  ProfileModel(
      {required this.id,
      required this.userId,
      this.firstName,
      this.lastName,
      this.avatarUrl,
      this.address,
      this.birthDate,
      this.gender,
      this.role});
}
