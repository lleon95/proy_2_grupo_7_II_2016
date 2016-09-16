controlprinciapal(reset,CLK,finint,finwt,finct,usuario,clonar1,clonar2,iniciar,whileT,CrontUs);
  input reset,CLK,finint,finwt,finct,usuario;
  output clonar1,clonar2,iniciar,whileT,CrontUs;
  reg clonar1,clonar2,iniciar,whileT,CrontUs;
  reg [2:0] NextState;
  reg [2:0] State;
  
  parameter inicio=3'b000;
  parameter whilT=3'b001;
  parameter clonar1=3'b010;
  parameter usreq=3'b011;
  parameter clonar2=3'b100;
  parameter usr=3'b101;
  
  always @(finint or finwt or finct or usuario or State)
  begin
    NextSate =0;
    case(State)
      inicio:
        if(finint)NextState=whilT;
        else NextState=inicio;
      whilT:
        if(finwt)NextState=clonar1;
        else NextState=whilT;
      clonar1:
        NextState=usreq;
      usreq:
        if(usuario)NextState=clonar2;
        else NextState=whilT;
      clonar2:
        NextState=usr;
      usr:
        if(finct)NextState=whilT;
        else NextState=usr;
      default:
        NextState=inicio;
    endcase
  end
  
  always @(posedge CLK)
  begin
    if(reset)
    begin
      clonar1<=0;
      clonar2<=0;
      iniciar<=0;
      whileT<=0;
      CrontUs<=0;
    end
    else
    begin
      State<=NextState;
      case(State)
        inicio:
          begin
            clonar1<=0;
            clonar2<=0;
            iniciar<=1;
            whileT<=0;
            CrontUs<=0;
          end
        whilT:
          begin
            clonar1<=0;
            clonar2<=0;
            iniciar<=0;
            whileT<=1;
            CrontUs<=0;
          end
        clonar1:
          begin
            clonar1<=1;
            clonar2<=0;
            iniciar<=0;
            whileT<=0;
            CrontUs<=0;
          end
        usreq:
          begin
            clonar1<=0;
            clonar2<=0;
            iniciar<=0;
            whileT<=0;
            CrontUs<=1;
          end
        clonar2:
          begin
            clonar1<=0;
            clonar2<=1;
            iniciar<=0;
            whileT<=0;
            CrontUs<=0;
          end
        usr:
          begin
            clonar1<=0;
            clonar2<=0;
            iniciar<=0;
            whileT<=0;
            CrontUs<=1;
          end
        default:
          begin
            clonar1<=0;
            clonar2<=0;
            iniciar<=0;
            whileT<=0;
            CrontUs<=0;
          end
      endcase
    end
  end
  endmodule
