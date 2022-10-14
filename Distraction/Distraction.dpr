program Distraction;

uses
  Forms,
  login in 'login.pas' {formLogin},
  levels in 'levels.pas' {formNiveles},
  options in 'options.pas' {formOpciones},
  Level1 in 'Level1.pas' {formNivel1},
  credits in 'credits.pas' {formCreditos},
  configuration in 'configuration.pas' {formConfig},
  question1 in 'question1.pas' {formPregunta1},
  nivel2 in 'nivel2.pas' {formNiveles2},
  nivel3 in 'nivel3.pas' {formNiveles3},
  nivel4 in 'nivel4.pas' {formNiveles4},
  nivel5 in 'nivel5.pas' {formNiveles5},
  nivel6 in 'nivel6.pas' {formNiveles6},
  nivel7 in 'nivel7.pas' {formNiveles7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformPregunta1, formPregunta1);
  Application.CreateForm(TformConfig, formConfig);
  Application.CreateForm(TformNiveles, formNiveles);
  Application.CreateForm(TformOpciones, formOpciones);
  Application.CreateForm(TformNivel1, formNivel1);
  Application.CreateForm(TformCreditos, formCreditos);
  Application.CreateForm(TformNiveles2, formNiveles2);
  Application.CreateForm(TformNiveles3, formNiveles3);
  Application.CreateForm(TformNiveles4, formNiveles4);
  Application.CreateForm(TformNiveles5, formNiveles5);
  Application.CreateForm(TformNiveles6, formNiveles6);
  Application.CreateForm(TformNiveles7, formNiveles7);
  Application.Run;
end.
