unit credits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ShellApi, StdCtrls, GraphicEx;

type
  TformCreditos = class(TForm)
    Image1: TImage;
    L_Principal: TLabel;
    L_Enlace: TLabel;
    Label1: TLabel;
    L_Mescla: TLabel;
    Label2: TLabel;
    L_Music1: TLabel;
    L_Music2: TLabel;
    btnVolver: TPanel;
    procedure btnVolverClick(Sender: TObject);
    procedure L_EnlaceClick(Sender: TObject);
    procedure L_MesclaClick(Sender: TObject);
    procedure L_Music2Click(Sender: TObject);
    procedure L_Music1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCreditos: TformCreditos;

implementation

{$R *.dfm}

procedure TformCreditos.btnVolverClick(Sender: TObject);
begin
    Close;
end;

procedure TformCreditos.L_EnlaceClick(Sender: TObject);
const
URL = 'https://github.com/eehcx';
TipoBroser = 'Chrome.exe';
begin
    ShellExecute(Handle,'open',TipoBroser,URL,nil,SW_NORMAL);
end;

procedure TformCreditos.L_MesclaClick(Sender: TObject);
const
URL = 'https://soundcloud.com/emanuel-hernandez-23755945?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing';
TipoBroser = 'Chrome.exe';
begin
    ShellExecute(Handle,'open',TipoBroser,URL,nil,SW_NORMAL);
end;

procedure TformCreditos.L_Music2Click(Sender: TObject);
const
URL = 'https://www.youtube.com/user/nikinphaser';
TipoBroser = 'Chrome.exe';
begin
    ShellExecute(Handle,'open',TipoBroser,URL,nil,SW_NORMAL);
end;

procedure TformCreditos.L_Music1Click(Sender: TObject);
const
URL = 'https://itssanssouci.bandcamp.com/';
TipoBroser = 'Chrome.exe';
begin
    ShellExecute(Handle,'open',TipoBroser,URL,nil,SW_NORMAL);
end;

end.
