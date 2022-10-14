unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, GraphicEx, ExtCtrls;

type
  TformLogin = class(TForm)
    Image1: TImage;
    btn1: TLabel;
    btn2: TLabel;
    btn3: TLabel;
    sonido: TMediaPlayer;
    mediaBtn: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
    procedure btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;
        i:Integer;

implementation

uses levels, options;

{$R *.dfm}

procedure TformLogin.FormActivate(Sender: TObject);
begin

  sonido.Play;
end;

procedure TformLogin.btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  for x:=1 to 3 do begin
        TPanel(FindComponent('btn'+IntToStr(x))).Color:=clBlack;
        TPanel(FindComponent('btn'+IntToStr(x))).Font.Color:=clWhite;
    end;

    TPanel(sender).Color:=clBlack; //clWindowText
    TPanel(sender).Font.Color:=clPurple;
end;

procedure TformLogin.btn1Click(Sender: TObject);
begin
    formNiveles.Show;
end;

procedure TformLogin.btn2Click(Sender: TObject);
begin
    formOpciones.Show;
end;

procedure TformLogin.btn3Click(Sender: TObject);
begin
        Close;
end;

end.
