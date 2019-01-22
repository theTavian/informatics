unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCToF: TButton;
    BFToC: TButton;
    BEnd: TButton;
    ECin: TEdit;
    ECout: TEdit;
    EFin: TEdit;
    EFout: TEdit;
    Label1: TLabel;
    LT1: TLabel;
    LT2: TLabel;
    procedure BCToFClick(Sender: TObject);
    procedure BFToCClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.BCToFClick(Sender: TObject);
var c: real;
begin
     c:= StrToFloat(ECin.Text);
     EFout.Text:=FloatToStr(c*1.8+32);
end;

procedure TForm1.BFToCClick(Sender: TObject);
var f: real;
begin
     f:=StrToFloat(EFin.Text);
     ECout.Text:=FloatToStr((f-32)*(5/9));
end;


end.

