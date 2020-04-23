uses math, crt;

var n,m, i ,j : integer;
a: array[1..100,1..100] of longint;
ketqua: longint;

function soDoiXung(x: longint): boolean;
var tam, nghichDao: longint;
BEGIN
    tam:=x;
    nghichDao:=0;
    while tam>0 do
    BEGIN
        nghichDao:=nghichDao*10 + (tam mod 10);
        tam:= tam div 10;
    END;
    if x = nghichDao then soDoiXung:=true
    else soDoiXung:=false;
END;

BEGIN
    write('Nhap m,n: ');
    readln(m,n);
    writeln('Nhap ma tran: ');
    for i:=1 to m do
        for j:=1 to n do
        BEGIN
            read(a[i,j]);
        END;
        
    ketQua:=-1;
    for i:=1 to m do
        for j:=1 to n do
        BEGIN
            if (soDoiXung(a[i,j])) then
                ketQua:=max(ketQua, a[i,j]);
        END;
    
    if (ketQua=-1) then write('Khong ton tai so doi xung trong mang.')
    else write('So doi xung lon nhat trong mang la: ',ketQua);

END.
