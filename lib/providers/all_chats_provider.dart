import 'package:flutter/material.dart';
import 'package:snu_connect/models/end_user.dart';

final List<EndUser> _dummyUsers = [
  EndUser(
    name: 'Shraddha',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Hriday',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Shivam',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Shrey',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Sankalp',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Saurabh',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
  EndUser(
    name: 'Mehak',
    email: 'sa350',
    phone: '123456789',
    photoUrl: 'sample',
  ),
];

class AllChatsProvider extends ChangeNotifier {
  List<EndUser> filteredList = _dummyUsers;

  void filterList(String query) {
    List<EndUser> matchingUsers = [];

    for (EndUser u in _dummyUsers) {
      if (u.name?.toLowerCase().startsWith(query.toLowerCase()) ?? false) {
        matchingUsers.add(u);
      }
    }
    filteredList = matchingUsers;
    notifyListeners();
  }

  List<EndUser> get dummyUsers => _dummyUsers;
}
