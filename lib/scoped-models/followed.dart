
import 'package:scoped_model/scoped_model.dart';

class FollowedModel extends Model {
  List<String> _followed = [];

  List<String> get followed{
    return List.from(_followed);
  }

  void _add_Followed(String uid){
    _followed.add(uid);
  }
}