
private final HttpConnect httpConnect = new HttpConnect();

void setup() {
  
  // send data
  httpConnect.SetData(123);
  
}

void draw() {
}

// response
void SetDataOnComplete(String _response) {
  println("response: " + _response);
}