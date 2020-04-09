//Menu model handles menu state 
import 'package:scoped_model/scoped_model.dart';

class MenuModel extends Model {
  //position of clicked menu item
  int _position = 0;

  int get position => _position;

  MenuModel(){
    _position = 1;
    notifyListeners();
  }

  void changePosition(int index){
    //update the position to the current position
    _position = index;
    notifyListeners();
  }
}