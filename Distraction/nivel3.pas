unit nivel3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GraphicEx;

type
  TformNiveles3 = class(TForm)
    Logo: TImage;
    btnConfig: TImage;
    L_Nivel: TLabel;
    L_Ingrese: TLabel;
    L_TextoInfo: TLabel;
    P_Principal: TPanel;
    IMG1: TImage;
    IMG2: TImage;
    IMG3: TImage;
    IMG4: TImage;
    IMG5: TImage;
    E1: TEdit;
    E3: TEdit;
    E5: TEdit;
    E2: TEdit;
    E4: TEdit;
    btnGenerar: TPanel;
    btnComprobar: TPanel;
    ListCartas: TListBox;
    memoCartas: TMemo;
    ListComprobar: TListBox;
    btnAgregar: TPanel;
    memoComprobar: TMemo;
    Respuestas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    TR1: TImage;
    TR2: TImage;
    TR3: TImage;
    TR4: TImage;
    R1: TImage;
    R2: TImage;
    R3: TImage;
    R4: TImage;
    TR5: TImage;
    R5: TImage;
    L_Ganaste: TLabel;
    L_Perdiste: TLabel;
    btnReiniciar: TPanel;
    btnRegresar: TPanel;
    TimerTablero: TTimer;
    TimerEdit: TTimer;
    AbrirPregunta: TTimer;
    TimerCerrar: TTimer;
    TimerLosing: TTimer;
    procedure btnGenerarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure TimerTableroTimer(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnComprobarClick(Sender: TObject);
    procedure TimerEditTimer(Sender: TObject);
    procedure TimerCerrarTimer(Sender: TObject);
    procedure AbrirPreguntaTimer(Sender: TObject);
    procedure btnReiniciarClick(Sender: TObject);
    procedure btnReiniciarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnRegresarClick(Sender: TObject);
    procedure btnRegresarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formNiveles3: TformNiveles3;
        ruta:String;
        i:Integer;
implementation

uses configuration, question1;

{$R *.dfm}

procedure TformNiveles3.btnGenerarClick(Sender: TObject);
begin
  Randomize;
  ruta:=ExtractFilePath(Application.ExeName);

  for i:=0 to 4 do
    ListCartas.Items.Add(IntToStr( Random(28) + 1 ));

  memoCartas.Clear;
  for i:=0 to ListCartas.Count-1 do
    memoCartas.Lines.Add(ListCartas.Items.Strings[i]);

  IMG1.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[0]+'.png');
  IMG2.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[1]+'.png');
  IMG3.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[2]+'.png');
  IMG4.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[3]+'.png');
  IMG5.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[4]+'.png');
  btnGenerar.Enabled:=False;
  TimerTablero.Enabled:=True; // Quita el tablero con las cartas generadas y muestra el texto de enmedio
  AbrirPregunta.Enabled:=True;



  btnGenerar.Color:=clWhite;
  btnGenerar.Font.Color:=clBlack;
  TimerCerrar.Enabled:=True;
end;

procedure TformNiveles3.btnConfigClick(Sender: TObject);
begin
    formConfig.Show;
end;

procedure TformNiveles3.TimerTableroTimer(Sender: TObject);
begin
    P_Principal.Visible:=False;
    L_TextoInfo.Visible:=True;
end;

procedure TformNiveles3.btnAgregarClick(Sender: TObject);
begin
    E1.Text:=Trim(E1.Text);
    If Length (E1.Text)=0 Then Begin
        Application.MessageBox('Escriba el número que recuerde','Agrega Todas las Cartas',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    If Length (E1.Text)>=3 Then Begin
        Application.MessageBox('Escriba el número que recuerde','No escribas este número',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    E2.Text:=Trim(E2.Text);
    If Length (E2.Text)=0 Then Begin
        Application.MessageBox('Escriba el número que recuerde','Agrega Todas las Cartas',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    If Length (E2.Text)>=3 Then Begin
        Application.MessageBox('Escriba el número que recuerde','No escribas este número',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    E3.Text:=Trim(E3.Text);
    If Length (E3.Text)=0 Then Begin
        Application.MessageBox('Escriba el número que recuerde','Agrega Todas las Cartas',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    If Length (E3.Text)>=3 Then Begin
        Application.MessageBox('Escriba el número que recuerde','No escribas este número',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    E4.Text:=Trim(E4.Text);
    If Length (E4.Text)=0 Then Begin
        Application.MessageBox('Escriba el número que recuerde','Agrega Todas las Cartas',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    If Length (E4.Text)>=3 Then Begin
        Application.MessageBox('Escriba el número que recuerde','No escribas este número',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    E5.Text:=Trim(E5.Text);
    If Length (E5.Text)=0 Then Begin
        Application.MessageBox('Escriba el número que recuerde','Agrega Todas las Cartas',Mb_IconWarning + Mb_Ok);
        Exit;
    End;
    If Length (E5.Text)>=3 Then Begin
        Application.MessageBox('Escriba el número que recuerde','No escribas este número',Mb_IconWarning + Mb_Ok);
        Exit;
    End;

    ListComprobar.Items.Add(E1.Text);
    ListComprobar.Items.Add(E2.Text);
    ListComprobar.Items.Add(E3.Text);
    ListComprobar.Items.Add(E4.Text);
    ListComprobar.Items.Add(E5.Text);

    btnAgregar.Color:=clWhite;
    btnAgregar.Font.Color:=clBlack;

    E1.Clear;
    E2.Clear;
    E3.Clear;
    E4.Clear;
    E5.Clear;

    E1.SetFocus;
    btnAgregar.Enabled:=False;
end;

procedure TformNiveles3.btnComprobarClick(Sender: TObject);
begin
  memoComprobar.Clear;
  for i:=0 to ListCartas.Count-1 do
    memoComprobar.Lines.Add(ListComprobar.Items.Strings[i]);


    if  (ListComprobar.Items.Text) = (ListCartas.Items.Text) then begin
        Application.MessageBox('Ganaste, Felicidades Inge','Atención',Mb_IconInformation + Mb_Ok);
        L_Ganaste.Visible:=True;

        TR1.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[0]+'.png');
        TR2.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[1]+'.png');
        TR3.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[2]+'.png');
        TR4.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[3]+'.png');
        TR5.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[4]+'.png');

        R1.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[0]+'.png');
        R2.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[1]+'.png');
        R3.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[2]+'.png');
        R4.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[3]+'.png');
        R5.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[4]+'.png');
        btnRegresar.Visible:=True;
    end
    else begin

        Application.MessageBox('Eres un perdedor, Intentalo otra vez','Perdiste',Mb_IconInformation + Mb_Ok);
        L_Perdiste.Visible:=True;

        TR1.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[0]+'.png');
        TR2.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[1]+'.png');
        TR3.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[2]+'.png');
        TR4.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[3]+'.png');
        TR5.Picture.LoadFromFile(ruta+'\fotos\'+memoComprobar.Lines[4]+'.png');

        R1.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[0]+'.png');
        R2.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[1]+'.png');
        R3.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[2]+'.png');
        R4.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[3]+'.png');
        R5.Picture.LoadFromFile(ruta+'\fotos\'+memoCartas.Lines[4]+'.png');
        btnReiniciar.Visible:=True;
    end;
    btnComprobar.Color:=clWhite;
    btnComprobar.Font.Color:=clBlack;


    Respuestas.Visible:=True;
    btnComprobar.Enabled:=False;
end;

procedure TformNiveles3.TimerEditTimer(Sender: TObject);
begin
    E1.Visible:=True;
    E2.Visible:=True;
    E3.Visible:=True;
    E4.Visible:=True;
    E5.Visible:=True;
    L_Ingrese.Visible:=True;
    btnAgregar.Visible:=True;
    btnComprobar.Visible:=True;
end;

procedure TformNiveles3.TimerCerrarTimer(Sender: TObject);
begin
    L_TextoInfo.Caption:='ACONTINUACIÓN, INGRESA LAS RESPUESTAS';
    AbrirPregunta.Enabled:=False;
    TimerEdit.Enabled:=True;
end;

procedure TformNiveles3.AbrirPreguntaTimer(Sender: TObject);
begin
    formPregunta1.Show;
end;

procedure TformNiveles3.btnReiniciarClick(Sender: TObject);
begin
    btnReiniciar.Visible:=False;

    E1.Visible:=False;
    E2.Visible:=False;
    E3.Visible:=False;
    E4.Visible:=False;
    E5.Visible:=False;
    L_Ingrese.Visible:=False;
    btnAgregar.Visible:=False;
    btnComprobar.Visible:=False;

        ListCartas.Items.Clear;
        ListComprobar.Items.Clear;    
        memoCartas.Lines.Clear;
        memoComprobar.Lines.Clear;
        
        IMG1.Picture:=nil;
        IMG2.Picture:=nil;
        IMG3.Picture:=nil;
        IMG4.Picture:=nil;
        IMG5.Picture:=nil;

        R1.Picture:=nil;
        R2.Picture:=nil;
        R3.Picture:=nil;
        R4.Picture:=nil;
        R5.Picture:=nil;

        TR1.Picture:=nil;
        TR2.Picture:=nil;
        TR3.Picture:=nil;
        TR4.Picture:=nil;
        TR5.Picture:=nil;

        Respuestas.Visible:=False;
        L_Ganaste.Visible:=False;
        L_Perdiste.Visible:=False;
        P_Principal.Visible:=True;

        TimerEdit.Enabled:=False;
        TimerTablero.Enabled:=False;
        TimerCerrar.Enabled:=False;
        AbrirPregunta.Enabled:=False;

        L_TextoInfo.Visible:=False;

        btnGenerar.Color:=clBlack;
        btnGenerar.Font.Color:=clWhite;

        btnComprobar.Color:=clBlack;
        btnComprobar.Font.Color:=clWhite;

        btnAgregar.Color:=clBlack;
        btnAgregar.Font.Color:=clWhite;

        btnGenerar.Enabled:=True;
        L_TextoInfo.Caption:='ACONTINUACIÓN, RESPONDE LAS PREGUNTAS';
        btnComprobar.Enabled:=True;
        btnAgregar.Enabled:=True;
end;

procedure TformNiveles3.btnReiniciarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    btnReiniciar.Color:=clWhite;
    btnReiniciar.Font.Color:=clBlack;
end;

procedure TformNiveles3.btnRegresarClick(Sender: TObject);
begin
    btnReiniciar.Enabled:=False;
    //formL1.Close;
    formNiveles3.Close;
    //formNiveles.Show;
end;

procedure TformNiveles3.btnRegresarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
    btnRegresar.Color:=clWhite;
    btnRegresar.Font.Color:=clBlack;
end;

end.
