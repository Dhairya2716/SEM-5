import '../../utils/import_export.dart';

class RxIntTimerController{

  final RxIntTimerModel _model = RxIntTimerModel();
  Timer? _timer;

  RxInt get seconds => _model.timer;

  void StartCountDown(){

    _timer?.cancel();
    _model.timer.value = 10;

    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      if(_model.timer.value > 0) _model.timer.value--;
      else timer.cancel();
    });
  }

}