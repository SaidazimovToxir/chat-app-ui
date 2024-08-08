class ContactModel {
  final int contactId;
  final String contactName;
  final String contactLasName;
  final bool isOnline;
  final String imageUrl;
  final DateTime lastOnlineTime;

  ContactModel({
    required this.contactId,
    required this.contactLasName,
    required this.contactName,
    required this.isOnline,
    required this.imageUrl,
    required this.lastOnlineTime,
  });
}

List<ContactModel> allContacts = [
  ContactModel(
    contactId: 3,
    contactLasName: "Alisher",
    contactName: "Falonchiyev",
    isOnline: true,
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/e/e6/Official_portrait_of_Jim_McMahon_%283x4_crop%29.jpg",
    lastOnlineTime: DateTime.now(),
  )
];
