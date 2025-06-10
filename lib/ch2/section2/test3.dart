class User { }

void main() {
  dynamic data = 10;
  data = "hello";
  data = true;
  data = User();

  var no = 10;
  // no = "hello"; // error
  // no = true;    // error

  var no2;
  no2 = 10;
  no2 = true;
  no2 = "hello";

}