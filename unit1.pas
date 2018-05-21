unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c,x1,x2,D:real;
begin
  a:=strtoint(edit1.text);     //načíta premenné
  b:=strtoint(edit2.text);
  c:=strtoint(edit3.text);
if a=0 then showmessage('Hodnota a musí byť nenulová. Zadaj iné číslo.')  //ak sa a=0 príklad sa nedá vypočítať, a preto si pýta iné číslo
     else
       begin
D:=b*b-4*a*c;     //vypočíta diskriminant

if D<0 then showmessage('Daná rovnica nemá riešenie v R.');  //vypíše, že príklad sa nedá vypočítať
if D=0 then        //vypočíta a vypíše dvojnásobný koreň
   begin
     x1:=-b/(2*a);
     label5.caption:='Rovica má jeden dvojnásobný koreň . x='+floattostr(x1);
   end;
if D>0 then        //vypočíta zaokrúhli a vypíše korene
    begin
      x1:=(-b+sqrt(D))/(2*a);
      x1:=round(x1*1000)/1000;
      x2:=(-b-sqrt(D))/(2*a);
      x2:=round(x2*1000)/1000;
      label5.caption:='Rovnica má 2 korene. x1='+floattostr(x1)+' x2='+floattostr(x2);
    end;
end;
 end;
end.

