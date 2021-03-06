unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  frxClass, frxExportBaseDialog, frxExportXLSX, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Data.Win.ADODB, Winapi.shellapi, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Clipbrd;

type
  TFPrincipal = class(TForm)
    btnConsultar: TSpeedButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FechaFinal: TDateTimePicker;
    FechaInicial: TDateTimePicker;
    frxXLSXExport: TfrxXLSXExport;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    Query: TADOQuery;
    Label4: TLabel;
    cServicio: TComboBox;
    Label5: TLabel;
    ePaciente: TEdit;
    Label6: TLabel;
    Estado: TComboBox;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblUsuario: TLabel;
    Image1: TImage;
    sbConsultaExterna: TSpeedButton;
    Label9: TLabel;
    lTotal: TLabel;
    procedure btnConsultarClick(Sender: TObject);

    procedure ExportaExcel(Dataset: TDataset; NombreArchivo: string);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ePacienteKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbConsultaExternaClick(Sender: TObject);
  private
    { Private declarations }
    opcion: string;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses Login;

procedure TFPrincipal.btnConsultarClick(Sender: TObject);
var
  consulta, consultap, subconsulta, subconsultapro: string;
begin
  opcion := '';
  FPrincipal.Query.SQL.Clear;
  if Estado.Text = '' then
  begin
    ShowMessage('Debe seleccionar un estado');
    Exit;
  end;

  subconsultapro :=
    '(SELECT TOP (1) ccocod FROM procencos where f.servicio=procencos.cconom) as ccocod ';
  subconsulta :=
    ' (SELECT TOP(1) DESCRIPCION FROM Diagnosticoscie10 WHERE dxr.DXP = Diagnosticoscie10.DX ) as NombreDiagnostico';
  consultap :=
    'SELECT convert(varchar(5), f.hora, 108) as hora, ''1:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico,f.codigo,fecha,f.rips,'
    + subconsultapro +
    ',f.servicio, r.Eps as ideps, e.Nombre as NombreEPS, m.nombre as medico, r.ContratoE as NombreConvenio,Paciente IdPaciente,Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
    + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, Medicamento NombreRX,Dosificasion ObservacionOrden,  dxr.DXP as CodigoDiagnostico,'
    + subconsulta + '' +
    ' FROM            Formulacion f,   Usuarios u, RipsG r, EPSSI e, CONTRATOSIN c, DXRips dxr, medicos m '
    + ' WHERE f.oculusrx is null and u.AfCodigo=Paciente and r.Identificacion=u.AfCodigo and  r.Rips=f.Rips and e.codigoEps=r.Eps and e.codigoEps=c.Entidad and c.NumeroC=r.ContratoE '
    + 'and r.Rips=dxr.Rips  and dxr.rips=f.rips  and   (F.Tipo =3) and dxr.Servicio=f.servicio and c.Entidad=r.Eps and f.medico=m.codigo  '
    + '  and   f.rips>0 and( f.servicio<>''Consulta Externa'') and dxr.Servicio=f.servicio AND (F.Codigo LIKE ''87%'')';

  if (Estado.Text = 'PENDIENTE')  then
  begin

    if (ePaciente.Text = '') and (cServicio.Text = '') then
    begin
      consulta := consultap + ' and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' AND (F.Codigo LIKE ''87%'')  ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text <> '') and (ePaciente.Text <> '') then
    begin
      consulta := consultap + ' and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'') and f.servicio= ''' + cServicio.Text + '' +
        ''' AND (F.Codigo LIKE ''87%'') ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text = '') and (ePaciente.Text <> '') then
    begin
      consulta := consultap + ' and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'') AND (F.Codigo LIKE ''87%'') ORDER BY f.Autonumerico DESC';
    end
    else
    begin
      consulta := consultap + '  and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) + ''' and f.servicio= ''' +
        cServicio.Text + '' +
        ''' AND (F.Codigo LIKE ''87%'') ORDER BY f.Autonumerico DESC';
    end;

  end;


  if (Estado.Text = 'CON CAPTURA')  then
  begin
  subconsulta :=
    ' (SELECT TOP(1) DESCRIPCION FROM Diagnosticoscie10 WHERE dxr.DXP = Diagnosticoscie10.DX ) as NombreDiagnostico';
  consultaP :=
        ' SELECT convert(varchar(5), f.hora, 108) as hora, ''1:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico, fecha, f.servicio, e.Nombre as NombreEPS, Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
        + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, Medicamento NombreRX,Dosificasion ObservacionOrden,  dxr.DXP as CodigoDiagnostico,'+subconsulta+' ,oc.fechacapturaradiografia, m.nombre as medico'
        + ' FROM Formulacion f,  procencos  p, Usuarios u, RipsG r, EPSSI e, CONTRATOSIN c, DXRips dxr, medicos m, oculusrx oc '
        + ' WHERE u.AfCodigo=Paciente and r.Rips=f.Rips and e.codigoEps=r.Eps and c.NumeroC=r.ContratoE  and dxr.rips=f.rips  and   (F.Tipo =3) '
        + ' and oc.codigo=f.autonumerico AND oc.origen=''HC'' and oc.urlimagenradiografia is not null and f.servicio = p.cconom and m.codigo=f.medico and f.rips>0'+
        ' and f.servicio<>''Consulta Externa'' and f.Rips>0 and u.AfCodigo=Paciente and dxr.Servicio=f.servicio and c.Entidad=r.Eps ';
    if (ePaciente.Text = '') and (cServicio.Text = '') then
    begin

      consulta :=consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text <> '') and (ePaciente.Text <> '') then
    begin
      consulta := consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  and f.servicio = ''' + cServicio.Text + '' +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text = '') and (ePaciente.Text <> '') then
    begin
      consulta := consultap +' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  ORDER BY f.Autonumerico DESC';
    end
    else
    begin
      consulta :=consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) + ''' and f.servicio= ''' +
        cServicio.Text + '' + ''' ORDER BY f.Autonumerico DESC';
    end;

  end;

  if (Estado.Text = 'CON LECTURA') then

  begin
   subconsulta :=
    ' (SELECT TOP(1) DESCRIPCION FROM Diagnosticoscie10 WHERE dxr.DXP = Diagnosticoscie10.DX ) as NombreDiagnostico';
  consultaP :=
        ' SELECT convert(varchar(5), f.hora, 108) as hora, ''1:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico, fecha, f.servicio, e.Nombre as NombreEPS, Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
        + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, Medicamento NombreRX,Dosificasion ObservacionOrden,  dxr.DXP as CodigoDiagnostico,'+subconsulta+' ,oc.fechacapturaradiografia, oc.fechalectura, m.nombre as medico'
        + ' FROM Formulacion f,  procencos  p, Usuarios u, RipsG r, EPSSI e, CONTRATOSIN c, DXRips dxr, medicos m, oculusrx oc '
        + ' WHERE u.AfCodigo=Paciente and r.Rips=f.Rips and e.codigoEps=r.Eps and c.NumeroC=r.ContratoE  and dxr.rips=f.rips  and   (F.Tipo =3) '
        + ' and oc.codigo=f.autonumerico AND oc.origen=''HC'' and oc.fechalectura is not null and f.servicio = p.cconom and m.codigo=f.medico and f.rips>0'+
        ' and f.servicio<>''Consulta Externa'' and f.Rips>0 and u.AfCodigo=Paciente and dxr.Servicio=f.servicio and c.Entidad=r.Eps ';
    if (ePaciente.Text = '') and (cServicio.Text = '') then
    begin

      consulta :=consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text <> '') and (ePaciente.Text <> '') then
    begin
      consulta :=consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  and f.servicio = ''' + cServicio.Text + '' +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else if (cServicio.Text = '') and (ePaciente.Text <> '') then
    begin
      consulta :=consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')   ORDER BY f.Autonumerico DESC';
    end
    else
    begin
      consulta := consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) + ''' and f.servicio= ''' +
        cServicio.Text + '' + ''' ORDER BY f.Autonumerico DESC';
    end;

  end;
  Query.SQL.Clear;
  Query.SQL.Add(consulta);
  Query.Open();
  if Query.RecordCount>0 then
  lTotal.Caption:=Query.RecordCount.ToString
  else
  lTotal.Caption:='0';

  if Estado.Text='INTERPRETADO' then
  begin
     Query.SQL.Clear;
     Query.Close;

  end;

end;

procedure TFPrincipal.DBGrid1CellClick(Column: TColumn);
begin
  Clipboard.AsText := Query.FieldByName('autonumerico').AsString;
end;

procedure TFPrincipal.DBGrid1DblClick(Sender: TObject);
var
  consulta, servicio, codigoOrigen, codigo, cod, medico, origen: string;
  List: TStrings;
begin

  if Estado.Text = 'PENDIENTE' then
  begin
    if Query.FieldByName('servicio').AsString <> 'Consulta Externa' then
    begin
      origen := 'HC';
    end
    else
    begin
      origen := 'FT';
      servicio:='CONSULTA EXTERNA';
    end;
    cod := ' ' + Query.FieldByName('autonumerico').AsString;
    medico := FLogin.autenticado;
    if Application.MessageBox
      ('?Est? seguro de procesar el estudio seleccioando? ', 'Confirmaci?n',
      MB_YESNO) = 6 then
    begin
      codigoOrigen := Query.FieldByName('autonumerico').AsString;
      servicio := Query.FieldByName('servicio').AsString;
      codigo := codigoOrigen.SubString(2);
      consulta :=
        'INSERT INTO oculusrx (codigo, codigoorigen, medico, servicio, origen) VALUES ('''
        + codigo + ''' ,''' + codigoOrigen + ''',''' + medico + ''', ''' +
        servicio + ''', ''' + origen + ''')';
      Query.SQL.Clear;
      Query.SQL.Add(consulta);
      if Query.ExecSQL = 1 then
      begin
        if opcion.IsEmpty then
        begin
          consulta := 'UPDATE formulacion set oculusrx=1 where autonumerico='''
            + codigo + ''' ';
          Query.SQL.Clear;
          Query.SQL.Add(consulta);
          if Query.ExecSQL = 1 then
          begin
            btnConsultar.Click;
            ShowMessage('Estudio Hospitalario registrado. Esperando procesamiento');
          end;
        end
        else
        begin
         consulta := 'UPDATE citasservicios set oculusrx=1 where autonumerico='''
            + codigo + ''' ';
          Query.SQL.Clear;
          Query.SQL.Add(consulta);
          Query.ExecSQL;
          sbConsultaExterna.Click;
          ShowMessage('Estudio Consulta Externa registrado. Esperando procesamiento');
        end;

      end;
    end;
  end;
end;

procedure TFPrincipal.ePacienteKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if opcion.IsEmpty then
    begin
      btnConsultar.Click;

    end
    else
    begin
      sbConsultaExterna.Click;
    end;
end;

procedure TFPrincipal.ExportaExcel(Dataset: TDataset; NombreArchivo: string);
var
  Exportar: TextFile;
  a: integer;
begin

  AssignFile(Exportar, NombreArchivo);
  Rewrite(Exportar);
  Dataset.DisableControls;
  Dataset.First;
  for a := 0 to Dataset.FieldCount - 1 do
  begin
    if Dataset.fields[a].Visible then
      Write(Exportar, Dataset.fields[a].Displaylabel + ';');
  end;
  WriteLn(Exportar);
  while not Dataset.eof do
  begin
    for a := 0 to Dataset.FieldCount - 1 do
    begin
      if Dataset.fields[a].Visible then
        if Dataset.fields[a].IsNull then
          Write(Exportar, '')
        else
          Write(Exportar, Dataset.fields[a].value); // Campo separado por tabs
      Write(Exportar, ';');
    end;
    WriteLn(Exportar);
    Dataset.next;
  end;
  Dataset.First;
  Dataset.EnableControls;
  CloseFile(Exportar);
  ShowMessage('Datos exportados exitosamente...');

  ShellExecute(FPrincipal.Handle, nil, pchar(NombreArchivo), nil, nil,
    SW_SHOWNORMAL);
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin

  FLogin.ShowModal;
  FechaInicial.Date := Now;
  FechaFinal.Date := Now;
  Query.SQL.Clear;
  Query.Close;
  lblUsuario.Caption := FLogin.autenticado;
  opcion := '';
end;

procedure TFPrincipal.sbConsultaExternaClick(Sender: TObject);
var
  subconsultapro, consulta, subconsulta, consultap: string;
begin
  opcion := 'CONSULTA EXTERNA';
  consultap :=
    'SELECT convert(varchar(5), f.hora, 108) as hora, ''2:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico,f.codigo,fecha,f.rips,'
    + ' ''Consulta Externa'' as servicio, e.Nombre as NombreEPS,Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
    + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, f.servicio as  NombreRX'
    + ' FROM  CitasServicios f ' +
    ' left join Usuarios u on f.Paciente=u.AfCodigo' +
    ' left join RipsG r on r.Rips=f.Rips ' +
    ' left join EPSSI e on e.codigoEps=r.Eps' +
    ' WHERE  f.rips>0 and f.oculusrx is null  AND (F.Codigo LIKE ''87%'')';
  Query.SQL.Clear;

  if (Estado.Text = 'PENDIENTE') then
  begin

    if (ePaciente.Text = '') then
    begin
      consulta := consultap + ' and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        '''   ORDER BY f.Autonumerico DESC';

    end
    else
    begin
      consulta := consultap + ' and f.fecha between ''' +
        FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  ORDER BY f.Autonumerico DESC';
    end;
  end;



  if (Estado.Text = 'CON CAPTURA') then
  begin
    consultap :=
    'SELECT convert(varchar(5), f.hora, 108) as hora, ''2:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico,f.codigo,fecha,f.rips,'
    + ' ''Consulta Externa'' as servicio, e.Nombre as NombreEPS,Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
    + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, f.servicio as  NombreRX, oc.fechacapturaradiografia'
    + ' FROM  CitasServicios f ' +
    ' left join Usuarios u on f.Paciente=u.AfCodigo' +
    ' left join RipsG r on r.Rips=f.Rips ' +
    ' left join EPSSI e on e.codigoEps=r.Eps' +
    ' left join oculusrx oc on oc.codigoorigen=''2:''+CONVERT(varchar(10),f.Autonumerico)' +
    ' WHERE  f.rips>0 and f.oculusrx=1  AND (F.Codigo LIKE ''87%'')';

    if (ePaciente.Text = '') then
    begin
      consulta :=
        consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else
    begin
        consulta := consultap+'  and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  ORDER BY f.Autonumerico DESC';
    end;

  end;
   if (Estado.Text = 'CON LECTURA') then
  begin
    consultap :=
    'SELECT convert(varchar(5), f.hora, 108) as hora, ''2:''+CONVERT(varchar(10),f.Autonumerico) as Autonumerico,f.codigo,fecha,f.rips,'
    + ' ''Consulta Externa'' as servicio, e.Nombre as NombreEPS,Paciente IdentificacionPaciente, u.NombreCompleto as NombrePaciente,'
    + 'u.sexo, u.FECHA_NACIMIENTO as fechaNacimiento ,f.Codigo Cups, f.servicio as  NombreRX, oc.fechacapturaradiografia, oc.fechalectura'
    + ' FROM  CitasServicios f ' +
    ' left join Usuarios u on f.Paciente=u.AfCodigo' +
    ' left join RipsG r on r.Rips=f.Rips ' +
    ' left join EPSSI e on e.codigoEps=r.Eps' +
    ' left join oculusrx oc on oc.codigoorigen=''2:''+CONVERT(varchar(10),f.Autonumerico)' +
    ' WHERE  f.rips>0 and f.oculusrx=2  AND (F.Codigo LIKE ''87%'')';

    if (ePaciente.Text = '') then
    begin
      consulta :=
        consultap+' and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' ORDER BY f.Autonumerico DESC';
    end
    else
    begin
        consulta := consultap+'  and f.fecha between '''
        + FormatDateTime('yyyymmdd', FechaInicial.Date) + ''' and ''' +
        FormatDateTime('yyyymmdd', FechaFinal.Date) +
        ''' and (u.NombreCompleto like ''%' + ePaciente.Text +
        '%'' or f.paciente like ''%' + ePaciente.Text +
        '%'')  ORDER BY f.Autonumerico DESC';
    end;

  end;
  Query.SQL.Clear;
  Query.SQL.Add(consulta);
  Query.Open;
  if Query.RecordCount>0 then
  lTotal.Caption:=Query.RecordCount.ToString
  else
  lTotal.Caption:='0';

end;

end.
