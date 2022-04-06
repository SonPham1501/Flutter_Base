
class BaseState{

}

class BaseStateInit extends BaseState{
  dynamic data;
  dynamic data1;
  dynamic data2;
  dynamic data3;
  dynamic data4;
  BaseStateInit({this.data, this.data1, this.data2, this.data3, this.data4});
}

class BaseStateLoading extends BaseState{
  dynamic data;
  dynamic data1;
  dynamic data2;
  dynamic data3;
  dynamic data4;
  BaseStateLoading({this.data, this.data1, this.data2, this.data3, this.data4});
}

class BaseStateLoaded extends BaseState{
  dynamic data;
  dynamic data1;
  dynamic data2;
  dynamic data3;
  dynamic data4;
  BaseStateLoaded({this.data, this.data1, this.data2, this.data3, this.data4});
}

class BaseStateNull extends BaseState{
  dynamic data;
  dynamic data1;
  dynamic data2;
  dynamic data3;
  dynamic data4;
  BaseStateNull({this.data, this.data1, this.data2, this.data3, this.data4});
}

class BaseStateError extends BaseState{
  dynamic data;
  dynamic data1;
  dynamic data2;
  dynamic data3;
  dynamic data4;
  BaseStateError({this.data, this.data1, this.data2, this.data3, this.data4});
}