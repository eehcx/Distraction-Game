unit options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GraphicEx;

type
  TformOpciones = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    L_Opciones: TLabel;
    btn1: TPanel;
    btn2: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formOpciones: TformOpciones;

implementation

uses credits;

{$R *.dfm}

procedure TformOpciones.btn1Click(Sender: TObject);
begin
    formCreditos.Show;
end;

procedure TformOpciones.btn2Click(Sender: TObject);
begin
    Close;
end;

end.
