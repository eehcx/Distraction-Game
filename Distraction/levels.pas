unit levels;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GraphicEx;

type
  TformNiveles = class(TForm)
    Image2: TImage;
    Image1: TImage;
    btnReturn: TImage;
    P_Main: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnManual: TLabel;
    P_N1: TPanel;
    P_N2: TPanel;
    P_N3: TPanel;
    P_N5: TPanel;
    P_N4: TPanel;
    P_N6: TPanel;
    P_N7: TPanel;
    P_N8: TPanel;
    P_N9: TPanel;
    P_N10: TPanel;
    P_N11: TPanel;
    P_N12: TPanel;
    P_N13: TPanel;
    P_N14: TPanel;
    P_N15: TPanel;
    P_N16: TPanel;
    P_N17: TPanel;
    P_N18: TPanel;
    P_N19: TPanel;
    P_N20: TPanel;
    procedure btnReturnClick(Sender: TObject);
    procedure P_N1Click(Sender: TObject);
    procedure P_N1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure P_N2Click(Sender: TObject);
    procedure P_N3Click(Sender: TObject);
    procedure P_N4Click(Sender: TObject);
    procedure P_N5Click(Sender: TObject);
    procedure P_N6Click(Sender: TObject);
    procedure P_N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formNiveles: TformNiveles;
        x:Integer;

implementation

uses Level1, nivel2, nivel3, nivel4, nivel5, nivel6, nivel7;

{$R *.dfm}

procedure TformNiveles.btnReturnClick(Sender: TObject);
begin
    Close;
end;

procedure TformNiveles.P_N1Click(Sender: TObject);
begin
    formNivel1.Show;
end;

procedure TformNiveles.P_N1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  for x:=1 to 7 do begin
        TPanel(FindComponent('P_N'+IntToStr(x))).Color:=clWhite;
        TPanel(FindComponent('P_N'+IntToStr(x))).Font.Color:=clBlack;
    end;

    TPanel(sender).Color:=clBlack;
    TPanel(sender).Font.Color:=clWhite;  
end;

procedure TformNiveles.P_N2Click(Sender: TObject);
begin
   formNiveles2.Show;
end;

procedure TformNiveles.P_N3Click(Sender: TObject);
begin
    formNiveles3.Show;
end;

procedure TformNiveles.P_N4Click(Sender: TObject);
begin
    formNiveles4.Show;
end;

procedure TformNiveles.P_N5Click(Sender: TObject);
begin
    formNiveles5.Show;
end;

procedure TformNiveles.P_N6Click(Sender: TObject);
begin
    formNiveles6.Show;
end;

procedure TformNiveles.P_N7Click(Sender: TObject);
begin
    formNiveles7.Show;
end;

end.
