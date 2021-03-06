unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    eUsuario: TEdit;
    Label2: TLabel;
    eClave: TEdit;
    btnIngresar: TSpeedButton;
    btnSalir: TSpeedButton;
    Image1: TImage;
    procedure btnIngresarClick(Sender: TObject);
    procedure eClaveKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    autenticado: string;
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses Principal;

procedure TFLogin.btnIngresarClick(Sender: TObject);
var
usuario, clave, consulta : string;
begin
    usuario:=eUsuario.Text;
    clave:=eClave.Text;
    if usuario ='' then
    begin
      ShowMessage('Campo usuario sin valor');
      exit;
    end;
    if clave ='' then
    begin
      ShowMessage('Campo Clave sin valor');
      exit;
    end;

    Fprincipal.Query.SQL.Clear;
    consulta:='select * from medicos where usuario='''+usuario+''' and clave='''+clave+'''';
    Fprincipal.Query.SQL.Add(consulta);
    Fprincipal.Query.Open;


    if Fprincipal.Query.RecordCount >0 then
    begin
        autenticado:=Fprincipal.Query.FieldByName('usuario').AsString;
        Close;
      Fprincipal.show();
    end
    else
    begin
      ShowMessage('No Existe usuario registrado en el sistema');
      exit;
    end;

end;

procedure TFLogin.btnSalirClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFLogin.eClaveKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then
  btnIngresar.Click;
end;

end.
