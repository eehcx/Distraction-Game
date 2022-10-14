unit question1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GraphicEx, MPlayer;

type
  TformPregunta1 = class(TForm)
    Logo: TImage;
    L_Ingrese: TLabel;
    btnReturn: TImage;
    LTexto: TLabel;
    P_Principal: TPanel;
    LTexto1: TLabel;
    L_RC: TLabel;
    Respuesta: TLabel;
    Ganador: TLabel;
    Perdedor: TLabel;
    GroupPregunta: TGroupBox;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    Radio3: TRadioButton;
    Radio4: TRadioButton;
    btnComprobar: TPanel;
    btnReiniciar: TPanel;
    Habilitar: TTimer;
    btnGenerar: TPanel;
    Risa: TMediaPlayer;
    ganaste: TMediaPlayer;
    TimerRisa: TTimer;
    procedure btnReturnClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure btnComprobarClick(Sender: TObject);
    procedure HabilitarTimer(Sender: TObject);
    procedure btnComprobarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnReiniciarClick(Sender: TObject);
    procedure TimerRisaTimer(Sender: TObject);
    procedure btnReiniciarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPregunta1: TformPregunta1;
        c, i:Integer;

implementation

{$R *.dfm}

procedure TformPregunta1.btnReturnClick(Sender: TObject);
begin
    Habilitar.Enabled:=False;
    btnReiniciar.Enabled:=False;
    //formP1.Close;
    formPregunta1.Close;
   btnReturn.Visible:=False;
   Perdedor.Visible:=False;
   btnReiniciar.Visible:=False;
   btnComprobar.Enabled:=True;
   Radio1.Checked:=False;
   Radio2.Checked:=False;
   Radio3.Checked:=False;
   Radio4.Checked:=False;
   GroupPregunta.Caption:='';
   Respuesta.Caption:='';
   Ganador.Visible:=False;
   Respuesta.Visible:=False;
   L_RC.Visible:=False;
   Radio1.Caption:='';
   Radio2.Caption:='';
   Radio3.Caption:='';
   Radio4.Caption:='';
   LTexto.Visible:=False;
   P_Principal.Visible:=False;
   btnComprobar.Visible:=False;
   GroupPregunta.Visible:=False;
   btnGenerar.Enabled:=True;
   btnGenerar.Color:=clBlack;
   btnGenerar.Font.Color:=clWhite;
   btnComprobar.Color:=clBlack;
   btnComprobar.Font.Color:=clWhite;
   Risa.Enabled:=False;
   Risa.Close;
end;

procedure TformPregunta1.btnGenerarClick(Sender: TObject);
begin
    Randomize;
    c:= ( Random(10) + 1 );
    btnGenerar.Enabled:=False;
    If c=1 then begin
        GroupPregunta.Caption:='¿Qué se moja mientras se seca?';
        Radio1.Caption:='La piel';
        Radio2.Caption:='La ropa';
        Radio3.Caption:='La toalla';
        Radio4.Caption:='Mi pelo';
        //Cambiar de ubicación los radios
        //Radio3.Left:=32;
        //Radio3.Top:=32;
        //Radio1.Left:=152;
        //Radio1.Top:=32;
    End;
    If c=2 then begin
        GroupPregunta.Caption:='¿Qué mes del año tiene 28 días?';
        Radio1.Caption:='Enero';
        Radio2.Caption:='Febrero';
        Radio3.Caption:='No sé,¿Todos?';
        Radio4.Caption:='Diciembre';
    End;
    If c=3 then begin
        GroupPregunta.Caption:='Llena toda una habitación, pero no ocupa espacio';
        Radio1.Caption:='Mi tía';
        Radio2.Caption:='Mis pensar';
        Radio3.Caption:='La Luz';
        Radio4.Caption:='Mi pelo';

        //Radio3.Left:=152;
        //Radio3.Top:=72;
        //Radio4.Left:=152;
        //Radio4.Top:=32;
    End;
    If c=4 then begin
        GroupPregunta.Caption:='¿Cuál es el día más largo de la semana?';
        Radio1.Caption:='Lunes';
        Radio2.Caption:='Martes';
        Radio3.Caption:='Miércoles';
        Radio4.Caption:='Viernes';
    End;

    If c=5 then begin
        GroupPregunta.Caption:='¿En qué país se fabrican los sombreros de panamá?';
        Radio1.Caption:='Pánama';
        Radio2.Caption:='Obvio Panamá';
        Radio3.Caption:='Ecuador';
        Radio4.Caption:='México';
        {
        Radio3.Left:=32;
        Radio3.Top:=32;
        Radio1.Left:=152;
        Radio1.Top:=32;   }
    End;
    If c=6 then begin
        GroupPregunta.Caption:='¿Cuál es es final de todo?';
        Radio1.Caption:='Dios?';
        Radio2.Caption:='Muerte';
        Radio3.Caption:='Letra "o"';
        Radio4.Caption:='Fin del Mundo';
    End;
    If c=7 then begin
        GroupPregunta.Caption:='¿Cuánto vale Pi?';
        Radio1.Caption:='3.1415';
        Radio2.Caption:='3.1416';
        Radio3.Caption:='3.141592';
        Radio4.Caption:='3.15';
        {
        Radio3.Left:=152;
        Radio3.Top:=72;
        Radio4.Left:=152;
        Radio4.Top:=32; }
    End;
    If c=8 then begin
        GroupPregunta.Caption:='Pasa por todos lados y no se mueve';
        Radio1.Caption:='El cartero';
        Radio2.Caption:='El dinero';
        Radio3.Caption:='Los caminos';
        Radio4.Caption:='Mi amor';
         {
        Radio3.Left:=32;
        Radio3.Top:=72;
        Radio2.Left:=152;
        Radio2.Top:=32;}
    End;
    If c=9 then begin
        GroupPregunta.Caption:='¿Quién es el autor de la frase "Pienso, luego existo"?';
        Radio1.Caption:='Albert Einstein';
        Radio2.Caption:='Galileo Galilei';
        Radio3.Caption:='Descartes';
        Radio4.Caption:='Sócrates';
    End;

    P_Principal.Visible:=True;
    btnComprobar.Visible:=True;
    GroupPregunta.Visible:=True;
    //LTexto.Caption:=(IntToStr(c));
    btnGenerar.Color:=clWhite;
    btnGenerar.Font.Color:=clBlack;
end;

procedure TformPregunta1.btnComprobarClick(Sender: TObject);
begin
    LTexto.Caption:='Espera un Momento...';
    LTexto.Visible:=True;
    If Radio3.Checked=True Then begin
        btnComprobar.Enabled:=False;
        ganaste.Play;
        Application.MessageBox('Haz elegido correctamente','Ganaste',Mb_IconInformation + Mb_Ok);
        L_RC.Visible:=True;
        Respuesta.Visible:=True;
        Ganador.Visible:=True;
        Respuesta.Caption:= Radio3.Caption;
        Habilitar.Enabled:=True;
    End
    Else begin
        TimerRisa.Enabled:=True;
        btnComprobar.Enabled:=False;
        Risa.Open;
        Risa.Play;
        Application.MessageBox('Haz elegido incorrectamente','Perdiste',Mb_IconInformation + Mb_Ok);
        Perdedor.Visible:=True;
        btnReiniciar.Enabled:=True;
        btnReiniciar.Visible:=True;
    End;
end;

procedure TformPregunta1.HabilitarTimer(Sender: TObject);
begin
    btnReturn.Visible:=True;
    LTexto.Caption:='Regresa al juego';
end;

procedure TformPregunta1.btnComprobarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    btnComprobar.Color:=clWhite;
    btnComprobar.Font.Color:=clBlack;
end;

procedure TformPregunta1.btnReiniciarClick(Sender: TObject);
begin
    Habilitar.Enabled:=False;
   btnReturn.Visible:=False;
   Perdedor.Visible:=False;
   btnReiniciar.Visible:=False;
   btnComprobar.Enabled:=True;
   Radio1.Checked:=False;
   Radio2.Checked:=False;
   Radio3.Checked:=False;
   Radio4.Checked:=False;
   GroupPregunta.Caption:='';
   Respuesta.Caption:='';
   Ganador.Visible:=False;
   Respuesta.Visible:=False;
   L_RC.Visible:=False;
   Radio1.Caption:='';
   Radio2.Caption:='';
   Radio3.Caption:='';
   Radio4.Caption:='';
   LTexto.Visible:=False;
   P_Principal.Visible:=False;
   btnComprobar.Visible:=False;
   GroupPregunta.Visible:=False;
   btnGenerar.Enabled:=True;
   btnGenerar.Color:=clBlack;
   btnGenerar.Font.Color:=clWhite;
   btnComprobar.Color:=clBlack;
   btnComprobar.Font.Color:=clWhite;
   Risa.Enabled:=False;
   Risa.Close;
end;

procedure TformPregunta1.TimerRisaTimer(Sender: TObject);
begin
    Risa.Enabled:=True;
end;

procedure TformPregunta1.btnReiniciarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    btnReiniciar.Color:=clWhite;
    btnReiniciar.Font.Color:=clBlack;
end;

end.
