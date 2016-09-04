import datetime
archivo = open("C:/Users/User/Documents/proy_2_grupo_7_II_2016/VerilogCodes/RTC/tiempo.txt","w+")
x=datetime.datetime.now();
j=[];
for i in range(128):
    if(i==33): j.append((x.second))
    elif(i==34): j.append((x.minute))
    elif(i==35): j.append((x.hour))
    elif(i==36): j.append((x.day))
    elif(i==37): j.append((x.month))
    elif(i==38): j.append((x.year-2000))
    else: j.append(0)
for i in range(128):
    j[i]=str(j[i])
    archivo.write(j[i])
    archivo.write("\n")
archivo.close();
