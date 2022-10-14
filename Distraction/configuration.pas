unit configuration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TformConfig = class(TForm)
    Panel1: TPanel;
    btnCerrar: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure btnCerrarClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConfig: TformConfig;

implementation

uses login, Level1, Level2, levels, nivel2, nivel3, nivel4, nivel5;

{$R *.dfm}

procedure TformConfig.btnCerrarClick(Sender: TObject);
begin
   Application.MessageBox('Saldrás del juego y perderás tu progreso','    Mensaje',Mb_IconQuestion + Mb_Ok);
    formLogin.Close;
end;

procedure TformConfig.Panel2Click(Sender: TObject);
begin
    Close;
end;

procedure TformConfig.Panel3Click(Sender: TObject);
begin
    formNivel1.Close;
    formNiveles2.Close;
    formNiveles3.Close;
    formNiveles4.Close;
    formNiveles5.Close;
    Close;
    formNiveles.Show;
 
end;

end.
