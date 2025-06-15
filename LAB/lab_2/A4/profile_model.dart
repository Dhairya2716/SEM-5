//WAP to create a profile card with available widgets in Flutter.

class ProfileModel {
  final String name;
  final String email;
  final String profession;
  final String avatarPath;

  ProfileModel({
    required this.name,
    required this.email,
    required this.profession,
    required this.avatarPath,
  });

  static List<ProfileModel> getAllProfiles() {
    return [
      ProfileModel(
        name: 'Dhairya Dudkiya',
        email: 'DD@gmail.com',
        profession: 'Software Engineer',
        avatarPath: 'assets/Images/avatar.jpg',
      ),
      ProfileModel(
        name: 'Malay Panara',
        email: 'MP@gmail.com',
        profession: 'UI/UX Designer',
        avatarPath: 'assets/Images/avatar.jpg',
      ),
    ];
  }

  static ProfileModel getProfileData() {
    return getAllProfiles()[0];
  }
}