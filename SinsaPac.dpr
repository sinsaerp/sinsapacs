program SinsaPac;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FPrincipal},
  Login in 'Login.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
