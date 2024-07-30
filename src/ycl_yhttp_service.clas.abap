class YCL_YHTTP_SERVICE definition
  public
  create public .

public section.

  interfaces IF_HTTP_SERVICE_EXTENSION .
protected section.
private section.
ENDCLASS.



CLASS YCL_YHTTP_SERVICE IMPLEMENTATION.


  method IF_HTTP_SERVICE_EXTENSION~HANDLE_REQUEST.
    check 1 = 2.
  endmethod.
ENDCLASS.
