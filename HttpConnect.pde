import http.requests.*;

class HttpConnect{
  
  //----------------------------------
  //  init
  //----------------------------------
  // final vars
  private final String setDataUrl = "http://example.com/setData.php";
  
  // vars
  private Thread setStandNumThread;
  
  // constructor
  HttpConnect(){
  }
  
  // SetStandNum
  public void SetData(int _data){
    setStandNumThread = new Thread(new SetDataThread(setDataUrl, _data));
    setStandNumThread.start();
  }
  
}

//----------------------------------
//  SetStandNumThread
//----------------------------------
class SetDataThread implements Runnable {
  
  private String setDataUrl;
  private int data;
  
  public SetDataThread(String _setDataUrl, int _data){
    setDataUrl = _setDataUrl;
    data = _data;
  }
  
  public synchronized void run() {
    GetRequest get = new GetRequest(
      setDataUrl + "?m=" + data
    );
    
    get.send();
    
    String response = get.getContent();
    SetDataOnComplete(response);
  }
  
}