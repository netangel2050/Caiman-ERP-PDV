unit UVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, UCadNovo, Buttons, ExtCtrls, ComCtrls, StdCtrls, ImgList, ToolWin, 
  Mask, Grids, DBGrids, DB, rxToolEdit, rxCurrEdit, RDprint, DBClient, 
  acAlphaImageList, frxClass, frxDBSet, frxExportPDF, UNovosComponentes, 
  UNovoFormulario, cxGraphics, cxControls, cxLookAndFeels, 
  cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolis, dxSkinMetropolisDark, 
  dxSkinOffice2013White, dxSkinsdxStatusBarPainter, dxStatusBar, 
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, 
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, 
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, 
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Client, 
  FireDAC.Comp.Script, FireDAC.Comp.DataSet, sSpeedButton, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, dxGDIPlusClasses, System.Math, System.ImageList;

type
  TFrmVenda = class(TFrmCadastroNovo)
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    BtnConsCli: TsSpeedButton;
    BtnAddCli: TsSpeedButton;
    Label22: TLabel;
    EdtCod: UNovosComponentes.TEdit;
    EdtCodcli: UNovosComponentes.TEdit;
    EdtNomecli: TEdit;
    Label5: TLabel;
    EdtCodTPV: UNovosComponentes.TEdit;
    BtnConsTPV: TsSpeedButton;
    BtnAddTPV: TsSpeedButton;
    EdtNomeTPV: TEdit;
    Label6: TLabel;
    QOrdem: TFDQuery;
    IBSQLVenda: TFDQuery;
    IBTRVenda: TFDTransaction;
    QOrdemORDEM: TIntegerField;
    QBuscaItens: TFDQuery;
    DSBuscaItens: TDataSource;
    QInsVenda: TFDQuery;
    LConv: TLabel;
    QItensPreVenda: TFDQuery;
    Panel5: TPanel;
    PanelItens: TPanel;
    Label19: TLabel;
    BtnConsPro: TsSpeedButton;
    BtnAddPro: TsSpeedButton;
    Label18: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label31: TLabel;
    EdtDescPerc: TCurrencyEdit;
    EdtQuant: TCurrencyEdit;
    EdtNomePro: TEdit;
    EdtValorUnit: TCurrencyEdit;
    EdtDescVr: TCurrencyEdit;
    EdtTotalProd: TCurrencyEdit;
    EdtCodNF: TEdit;
    ToolButton1: TToolButton;
    BtnFinaliza: TToolButton;
    Label3: TLabel;
    EdtCodPro: UNovosComponentes.TEdit;
    Label16: TLabel;
    BtnGrava: TBitBtn;
    BtnExclui: TBitBtn;
    QInsVendaCODVEN: TIntegerField;
    Label4: TLabel;
    EdtCodVend: UNovosComponentes.TEdit;
    BtnConsVend: TsSpeedButton;
    BtnAddVend: TsSpeedButton;
    EdtNomeVend: TEdit;
    Label7: TLabel;
    EdtData: TMaskEdit;
    Label9: TLabel;
    EdtEstoque: TCurrencyEdit;
    QItensPreVendaCOD_PRE: TIntegerField;
    QItensPreVendaORDEM: TIntegerField;
    QItensPreVendaCOD_PRO: TIntegerField;
    QItensPreVendaDESCONTO: TBCDField;
    QItensPreVendaCOD_EMP: TIntegerField;
    QItensPreVendaQUANT: TBCDField;
    QItensPreVendaVALOR: TBCDField;
    QItensPreVendaPRODUTO_PROMOCAO: TStringField;
    QItensPreVendaCANCELADO: TIntegerField;
    QPreVenda: TFDQuery;
    QPreVendaCOD_PRE: TIntegerField;
    QPreVendaDATA_PRE: TDateField;
    QPreVendaCOD_CLI: TIntegerField;
    QPreVendaCOD_TPV: TIntegerField;
    QPreVendaCOD_EMP: TIntegerField;
    QPreVendaSTATUS_PRE: TIntegerField;
    QPreVendaTOTAL_PRE: TBCDField;
    QPreVendaHORA_PRE: TTimeField;
    QPreVendaCOD_VENDA: TIntegerField;
    QPreVendaDOCUMENTO: TStringField;
    QPreVendaOBS_PRE: TStringField;
    QPreVendaDESCONTO_PRE: TBCDField;
    QPreVendaCOD_VEND: TIntegerField;
    QPreVendaSEQUENCIA_PAF: TLargeintField;
    QPreVendaSENHA_FECHAR_VENDA: TStringField;
    QPreVendaNOME_CLI: TStringField;
    QPreVendaNOME_TPV: TStringField;
    QPreVendaNOME_VEND: TStringField;
    QItensPreVendaPRECO_CUSTO: TBCDField;
    PanelAuxVenda: TPanel;
    LabelAuxVenda: TLabel;
    EdtAuxVenda: TEdit;
    StatusBar1: TStatusBar;
    OPConsignada: TComboBox;
    Label67: TLabel;
    Itens: TFDQuery;
    ItensCOD_VEN: TIntegerField;
    ItensCOD_PRO: TIntegerField;
    ItensORDEM: TIntegerField;
    ItensDESCONTO: TBCDField;
    ItensCOD_EMP: TIntegerField;
    ItensQUANT: TBCDField;
    ItensVALOR: TBCDField;
    ItensVALOR_CUSTO: TBCDField;
    ItensPRODUTO_PROMOCAO: TStringField;
    ItensCANCELADO: TIntegerField;
    ItensVENDA_CANCELADA: TIntegerField;
    ItensCOD_VEND: TIntegerField;
    ItensSTATUS_EXPORTA: TIntegerField;
    ItensNOME_PRO: TStringField;
    ItensDESC_CUPOM: TStringField;
    ItensCST_CF_EST: TStringField;
    ItensCST_CF_FORA: TStringField;
    ItensICMS_CF_EST: TIntegerField;
    ItensICMS_CF_FORA: TIntegerField;
    ItensRED_CF_EST: TBCDField;
    ItensRED_CF_FORA: TBCDField;
    ItensCFOP_VENDAS_CF_EST: TIntegerField;
    ItensCFOP_VENDAS_CF_FORA: TIntegerField;
    ItensDESCRICAO: TStringField;
    ItensCALC_TOTAL: TCurrencyField;
    QTipoVenda: TFDQuery;
    QTipoVendaCOD_TPV: TIntegerField;
    QTipoVendaNOME_TPV: TStringField;
    QTipoVendaQTDPARCELAS_TPV: TIntegerField;
    QTipoVendaDIASPRIPARC_TPV: TIntegerField;
    QTipoVendaDIASENTREPARC_TPV: TIntegerField;
    QTipoVendaPOSSUI_ENTRADA: TStringField;
    QTipoVendaPERC_ENTRADA: TBCDField;
    QTipoVendaTABELA_PRECO_TPV: TStringField;
    Parcelas: TClientDataSet;
    ParcelasNumero: TIntegerField;
    ParcelasVenc: TDateField;
    ParcelasValor: TFloatField;
    RDprint1: TRDprint;
    Label10: TLabel;
    QAux: TFDQuery;
    btnPedido: TToolButton;
    IBQuery1: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBBCDField1: TBCDField;
    IntegerField4: TIntegerField;
    IBBCDField2: TBCDField;
    IBBCDField3: TBCDField;
    IBBCDField4: TBCDField;
    IBStringField1: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IBStringField2: TStringField;
    IBStringField3: TStringField;
    IBStringField4: TStringField;
    IBStringField5: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IBBCDField5: TBCDField;
    IBBCDField6: TBCDField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBStringField6: TStringField;
    CurrencyField1: TCurrencyField;
    frxR1: TfrxReport;
    frxItens: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    pnlItensTitulo: TPanel;
    DBGrid1: TcxGrid;
    GridDBItens: TcxGridDBTableView;
    DBGrid1Level1: TcxGridLevel;
    GridDBItensCOD_PRO: TcxGridDBColumn;
    GridDBItensORDEM: TcxGridDBColumn;
    GridDBItensQUANT: TcxGridDBColumn;
    GridDBItensVALOR: TcxGridDBColumn;
    GridDBItensDESCONTO: TcxGridDBColumn;
    GridDBItensNOME_PRO: TcxGridDBColumn;
    GridDBItensDESCRICAO: TcxGridDBColumn;
    GridDBItensCALC_TOTAL: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxstylItens: TcxStyle;
    cxStyle1: TcxStyle;
    cxstyl1: TcxStyle;
    cxstylOdd: TcxStyle;
    Panel3: TPanel;
    pnlTotais: TPanel;
    EdtTotalLiquido: TcxLabel;
    cxLabel1: TcxLabel;
    pnlItensButtom: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    Panel7: TPanel;
    pnlDescontos: TPanel;
    EdtTotalDesconto: TcxLabel;
    cxLabel3: TcxLabel;
    pnlBruto: TPanel;
    EdtTotalBruto: TcxLabel;
    cxLabel4: TcxLabel;
    edtobs: TMemo;
    shp1: TShape;
    QBuscaItensCOD_VEN: TIntegerField;
    QBuscaItensCOD_PRO: TIntegerField;
    QBuscaItensORDEM: TIntegerField;
    QBuscaItensDESCONTO: TBCDField;
    QBuscaItensCOD_EMP: TIntegerField;
    QBuscaItensQUANT: TBCDField;
    QBuscaItensVALOR: TBCDField;
    QBuscaItensVALOR_CUSTO: TBCDField;
    QBuscaItensPRODUTO_PROMOCAO: TStringField;
    QBuscaItensCANCELADO: TIntegerField;
    QBuscaItensVENDA_CANCELADA: TIntegerField;
    QBuscaItensCOD_VEND: TIntegerField;
    QBuscaItensSTATUS_EXPORTA: TIntegerField;
    QBuscaItensNOME_PRO: TStringField;
    QBuscaItensDESC_CUPOM: TStringField;
    QBuscaItensCST_CF_EST: TStringField;
    QBuscaItensCST_CF_FORA: TStringField;
    QBuscaItensRED_CF_EST: TBCDField;
    QBuscaItensRED_CF_FORA: TBCDField;
    QBuscaItensCFOP_VENDAS_CF_EST: TIntegerField;
    QBuscaItensCFOP_VENDAS_CF_FORA: TIntegerField;
    QBuscaItensCST_IPI: TStringField;
    QBuscaItensCSOSN: TStringField;
    QBuscaItensCST_COFINS: TStringField;
    QBuscaItensCST_PIS: TStringField;
    QBuscaItensALIQUOTA_PIS: TBCDField;
    QBuscaItensALIQUOTA_COFINS: TBCDField;
    QBuscaItensDESCRICAO: TStringField;
    QBuscaItensSERVICO: TStringField;
    QBuscaItensISENTO_PIS_COFINS_PRO: TStringField;
    QBuscaItensALIQUOTA_GRP: TBCDField;
    QBuscaItensCOD_NCM: TStringField;
    QBuscaItensESTRES_CLI: TStringField;
    QBuscaItensCALC_TOTAL: TCurrencyField;
    QBuscaItensICMS_CF_EST: TIntegerField;
    QBuscaItensICMS_CF_FORA: TIntegerField;
    procedure EdtCodcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsCliClick(Sender: TObject);
    procedure BtnAddCliClick(Sender: TObject);
    procedure EdtCodcliExit(Sender: TObject);
    procedure BtnConsTPVClick(Sender: TObject);
    procedure BtnAddTPVClick(Sender: TObject);
    procedure BtnConsProClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure EdtCodProExit(Sender: TObject);
    function Ordem: integer;
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravaClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
    procedure LimpaItens;
    procedure QBuscaItensCalcFields(DataSet: TDataSet);
    procedure BuscaItens;
    procedure BtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure EdtDescVrExit(Sender: TObject);
    function VendaVista: boolean;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtQuantExit(Sender: TObject);
    procedure EdtValorUnitExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Botoes(acao: string);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure EdtCodcliEnter(Sender: TObject);
    procedure EdtCodProEnter(Sender: TObject);
    function DescontoTPV(codtpv: integer): real;
    procedure BtnFinalizaClick(Sender: TObject);
    procedure GravaItensPreVenda;
    procedure GravaCodPreVenda;
    procedure AtualizaPreVenda;
    procedure EdtDescPercExit(Sender: TObject);
    procedure MemoOBSEnter(Sender: TObject);
    procedure MemoOBSExit(Sender: TObject);
    procedure EdtCodTPVEnter(Sender: TObject);
    procedure EdtCodTPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodTPVExit(Sender: TObject);
    procedure EdtCodcliKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodVendEnter(Sender: TObject);
    procedure EdtCodVendExit(Sender: TObject);
    procedure EdtCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsVendClick(Sender: TObject);
    procedure BtnAddVendClick(Sender: TObject);
    procedure EdtAuxVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GravaVendaPreVenda(const sSenha: string);
    function GravaItensVendaPreVenda: integer;
    procedure ImprimeVenda;
    procedure btnPrevendaClick(Sender: TObject);
    procedure GeraParcelas(Sigla: String);
    procedure btnPedidoClick(Sender: TObject);
    procedure ItensCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure GridDBItensDblClick(Sender: TObject);
  private
    { Private declarations }
    SQLItens: String;
    procedure BuscaPadroes;
    procedure CarregaParametros;
  public
    iClienteVista: integer;
    { Public declarations }
  end;

  function FrmVenda: TFrmVenda;

var
  iCodPreVenda: integer;
  bVendaLiberada: boolean;
  bDescontoVenda: boolean;
  bDescontoItens: boolean;
  bAvista: boolean;

implementation

uses
  Udm, Ubibli1, UConsCli, UCadCli, UConsTipoVenda, UCadTipoVenda, UCadProduto, 
  UFechaVenda, UConsVendas, USitCli, UConsProd, UsenhaLiberarVenda, UConsVend, 
  UCadVend, UNovoPrincipal, UPrincipal, UDicLib, UDicFluxo;

var
  bGrava: boolean;
  iOrdem: integer;
  bVendaAberta: boolean;
  bContLimiteCli: boolean;
  cPrecoCusto: currency;
  bPromocao: boolean;
  sSql: string;

  EditaItem: Boolean;
  OrdemItem: Integer;
{$R *.dfm}

function FrmVenda: TFrmVenda;
begin
   Result := TFrmVenda( BuscaFormulario( TFrmVenda, False ) );
end;

procedure TFrmVenda.ImprimeVenda;
var
  subtotal, total: currency;
  linha: integer;
  traco: string;
  Razao_emp, Endereco_emp, CEP_emp, CID_emp, ESTADO_EMP, Numero_emp,
    TEL_EMP: string;

  CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
  Conf: String;

begin
  total := 0;
  traco :=
    '--------------------------------------------------------------------------------';
  // Parametros para o CUPOM FISCAL
  // RDprint1.TamanhoQteLinhas := 49; // Linhas (deve ser 1 quando for CUPOM)
  // RDprint1.TamanhoQteColunas := 80; // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
  // RDprint1.FonteTamanhoPadrao := s17cpp; // Fonte Comprimido em 20 cpp
  RDprint1.OpcoesPreview.Preview := false;
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;

  // DADOS DA EMPRESA
  dm.QConsulta.Close;
  dm.QConsulta.SQL.text := 'select * from EMPRESA where COD_EMP=:CODEMP';
  dm.QConsulta.ParamByName('CODEMP').AsInteger := iEmp;
  dm.QConsulta.Open;
  if dm.QConsulta.IsEmpty then
  begin
    AlertaCad('Erro ao buscar dados da empresa');
    dm.QConsulta.Close;
    dm.IBTransaction.Commit;
    exit;
  end;
  Razao_emp := dm.QConsulta.FieldByName('RAZAO_EMP').AsString;
  Endereco_emp := dm.QConsulta.FieldByName('END_EMP').AsString;
  Numero_emp := dm.QConsulta.FieldByName('NUMERO_EMP').AsString;
  CEP_emp := dm.QConsulta.FieldByName('CEP_EMP').AsString;
  CID_emp := dm.QConsulta.FieldByName('CID_EMP').AsString;
  ESTADO_EMP := dm.QConsulta.FieldByName('EST_EMP').AsString;
  TEL_EMP := dm.QConsulta.FieldByName('TEL_EMP').AsString;
  dm.QConsulta.Close;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;

  // DADOS DO CLIENTE
  dm.QConsulta.SQL.text := 'select * from CLIENTE where COD_CLI=:CODCLI';
  dm.QConsulta.ParamByName('CODCLI').AsString := FrmVenda.EdtCodcli.text;
  dm.QConsulta.Open;
  if dm.QConsulta.IsEmpty then
  begin
    AlertaCad('Erro ao buscar dados do cliente');
    dm.QConsulta.Close;
    dm.IBTransaction.Commit;
    exit;
  end;
  CLI := dm.QConsulta.FieldByName('NOME_CLI').AsString;
  END_CLI := dm.QConsulta.FieldByName('ENDRES_CLI').AsString;
  NUMERO_CLI := dm.QConsulta.FieldByName('NUMRES_CLI').AsString;
  CEP_CLI := dm.QConsulta.FieldByName('CEPRES_CLI').AsString;
  CID_CLI := dm.QConsulta.FieldByName('CIDRES_CLI').AsString;
  ESTADO_CLI := dm.QConsulta.FieldByName('ESTRES_CLI').AsString;
  dm.QConsulta.Close;

  dm.IBTransaction.Commit;

  // Cabeçalho do Cupom...
  with RDprint1 do
  begin
    abrir;
    imp(02, (80 - length(Razao_emp)) div 2, Razao_emp);
    imp(03, (80 - length(Endereco_emp + ',' + Numero_emp)) div 2,
      Endereco_emp + ',' + Numero_emp);
    imp(04, (80 - length(CEP_emp + ' - ' + CID_emp + ' - ' + ESTADO_EMP))
        div 2, CEP_emp + ' - ' + CID_emp + ' - ' + ESTADO_EMP);
    imp(05, (80 - length('Fone ' + TEL_EMP)) div 2, 'Fone ' + TEL_EMP);
    imp(07, 01, 'Nº ' + FrmVenda.EdtCod.text + '   ' + datetimetostr(now)
        + '    Op.: ' + FrmVenda.EdtNomeVend.text);

    // Dados do Cliente...
    imp(08, 01, traco);
    imp(09, 01, CLI);
    imp(10, 01, END_CLI + ',' + NUMERO_CLI);
    imp(11, 01, CEP_CLI + ' - ' + CID_CLI + ' - ' + ESTADO_CLI);

    // Titulo dos Itens...
    imp(12, 01, traco);
    imp(13, 01, 'Qte Descrição dos Produtos');
    // UN        Unitário Sub-Total
    imp(13, 45, 'UN'); // UN        Unitário Sub-Total
    imp(13, 55, 'Unitário');
    imp(13, 70, 'Sub-Total');
    imp(14, 01, traco);
  end;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  Itens.SQL.text := SQLItens;
  Itens.SQL.Add('where COD_VEN=:CODVENDA');
  Itens.ParamByName('CODVENDA').AsString := FrmVenda.EdtCod.text;
  Itens.Open;
  if Itens.IsEmpty then
  begin
    AlertaCad('Erro ao buscar itens da venda');
    dm.QConsulta.Close;
    dm.IBTransaction.Commit;
    exit;
  end;
  // Imprime itens do pedido...
  linha := 15;
  Itens.First;
  while not Itens.eof do
  begin
    with RDprint1 do
    begin
      impval(linha, 01, '##0', ItensQUANT.Value, []);
      if Length( ItensDESC_CUPOM.AsString ) > 38 then
         imp(linha, 05, Copy( ItensDESC_CUPOM.AsString, 1, 38 ) )
      else
      imp(linha, 05, ItensDESC_CUPOM.AsString);
      imp(linha, 45, ItensDESCRICAO.AsString);
      impval(linha, 50, '###,###,##0.00', ItensVALOR.Value, []);
      subtotal := ItensQUANT.Value * ItensVALOR.Value;
      total := total + subtotal;
      impval(linha, 66, '###,###,##0.00', subtotal, []);
      inc(linha);
    end;
    Itens.next;
  end;

  // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
  with RDprint1 do
  begin
    // Total...
    imp(linha, 01, traco);
    inc(linha);
    imp(linha, 01, 'Total Geral ');
    impval(linha, 66, '###,###,##0.00', total, []);
    inc(linha);
    imp(linha, 01, 'FORMA DE PAGAMENTO');
    imp(linha, 80 - length(EdtNomeTPV.text), EdtNomeTPV.text);
    inc(linha);
    imp(linha, 02, 'PARCELA');
    imp(linha, 11, 'VENCIMENTO');
    imp(linha, 75, 'VALOR');
    inc(linha);
    GeraParcelas('DN');
    Parcelas.Last;
    while not Parcelas.Bof do
    begin
      imp(linha, 02, InttoStr(ParcelasNumero.Value));
      imp(linha, 13, FormatDateTime('dd/mm/yy', ParcelasVenc.Value));
      impval(linha, 66, '###,###,##0.00', ParcelasValor.Value, []);
      Parcelas.Prior;
      inc(linha);
    end;
    Parcelas.Close;
    imp(linha, 01, traco);
    inc(linha);
    imp(linha, 27, '***  PEDIDO DE VENDA  ***');
    inc(linha);
    inc(linha);
    imp(linha, 1,
      '   ________________________________        ________________________________');
    inc(linha);
    imp(linha, 1,
      '        ASSINATURA VENDEDOR                        ASSINATURA CLIENTE');

    // Avança 7 linhas em Branco...
    linha := linha + 7;
    imp(linha, 01, ' '); // Para forçar impressão da página
    Conf := dm.LeIni('\cnfcomercio.ini', 'ConfiguracaoLocal',
      'NAO_FISCAL_TELA');
    { =========================================================================== }
    { Mostra preview com tamanho variavel de um cupom nao Fiscal }
    { }
    { ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS }
    { RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO... }
    { =========================================================================== }
    { } if Conf = 'S' then { }
      { } RDprint1.OpcoesPreview.Preview := true { }
      { } else { }
      { } RDprint1.OpcoesPreview.Preview := false; { }
    { } RDprint1.TamanhoQteLinhas := linha; // Qte de linhas do cupom {}
    { =========================================================================== }

    fechar;
  end;

  // Restaura valores normais para imprimir Cupom Não Fiscal...
  RDprint1.OpcoesPreview.Preview := false;
  RDprint1.TamanhoQteLinhas := 1;

end;

procedure TFrmVenda.ItensCalcFields(DataSet: TDataSet);
begin
  itensCALC_TOTAL.AsCurrency:= ((ItensQUANT.AsCurrency * ItensVALOR.AsCurrency) - ItensDESCONTO.AsCurrency);
end;

procedure TFrmVenda.Botoes(acao: string);
begin
  { (N)OVO
    (G)RAVAR
    (C)ANCELAR
    (A)LTERAR
    (E)EXCLUIR
    (P)ESQUISAR/CONSULTAR }

  if (acao = 'N') or (acao = 'A') then
  begin
    btnNovo.Enabled := false;
    BtnGravar.Enabled := true;
    BtnAlterar.Enabled := false;
    if acao = 'N' then
    begin
      Limpaedit(FrmVenda);
      btnExcluir.Enabled := false;
      //BtnPreVenda.Enabled := true;
      btnCancelar.Enabled := true;
    end
    else
    begin
      btnExcluir.Enabled := true;
     // BtnPreVenda.Enabled := false;
      btnCancelar.Enabled := false;
    end;
    BtnConsultar.Enabled := false;
  end
  else
  begin
    //BtnPreVenda.Enabled := false;
    if not(acao = 'G') then
      Limpaedit(FrmVenda);
    btnNovo.Enabled := true;
    BtnGravar.Enabled := false;
    btnCancelar.Enabled := false;
    if (acao = 'C') or (acao = 'E') then
    begin
      BtnAlterar.Enabled := false;
      BtnConsultar.Enabled := true;
    end
    else
      BtnAlterar.Enabled := true;
    if acao = 'G' then
      btnExcluir.Enabled := true
    else
      btnExcluir.Enabled := false;
  end;
end;

procedure TFrmVenda.GravaCodPreVenda;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.Consulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add(
          'UPDATE PRE_VENDA SET COD_VENDA = :CODVEN WHERE COD_PRE = :CODPRE');
        ParamByName('codpre').AsInteger := iCodPreVenda;
        ParamByName('codven').AsInteger := strtoint(EdtCod.text);
        ExecOrOpen;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      AlertaCad('Erro ao grava o código da venda na pre-venda');
    end;
  finally
    dm.Consulta.Close;
  end;
end;

procedure TFrmVenda.GravaItensPreVenda;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with QItensPreVenda do
  begin
    Close;
    ParamByName('codpre').AsInteger := iCodPreVenda;
    Open;
    First;
    if IBTRVenda.Active then
      IBTRVenda.Commit;
    IBTRVenda.StartTransaction;
    while not eof do
    begin
      IBSQLVenda.Close;
      IBSQLVenda.SQL.Clear;
      IBSQLVenda.SQL.Add('INSERT INTO ITENS_VENDA (COD_VEN, COD_PRO, ORDEM, ' +
          'QUANT, VALOR, DESCONTO, COD_EMP, VALOR_CUSTO, PRODUTO_PROMOCAO) ' +
          'VALUES(:CODVEN, :CODPRO, :ORDEM, :QUANT, :VALOR, ' +
          ':DESCONTO, :CODEMP, :CUSTO, :PRODPROMO)');

      IBSQLVenda.ParamByName('codven').AsInteger := strtoint(EdtCod.text);
      IBSQLVenda.ParamByName('codpro').AsInteger := FieldByName('COD_PRO')
        .AsInteger;
      IBSQLVenda.ParamByName('ordem').AsInteger := FieldByName('ORDEM')
        .AsInteger;
      IBSQLVenda.ParamByName('quant').AsCurrency := FieldByName('QUANT')
        .AsCurrency;
      IBSQLVenda.ParamByName('valor').AsCurrency := FieldByName('VALOR')
        .AsCurrency;
      IBSQLVenda.ParamByName('desconto').AsCurrency := FieldByName('DESCONTO')
        .AsCurrency;
      IBSQLVenda.ParamByName('codemp').AsInteger := iEmp;
      IBSQLVenda.ParamByName('prodpromo').AsString := FieldByName
        ('PRODUTO_PROMOCAO').AsString;
      IBSQLVenda.ParamByName('custo').AsCurrency := FieldByName('preco_custo')
        .AsCurrency;
      IBSQLVenda.ExecOrOpen;
      next;
    end;
    IBTRVenda.Commit;
    IBSQLVenda.Close;
    QItensPreVenda.Close;
  end;
end;

function TFrmVenda.VendaVista: boolean;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with dm.Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT QTDPARCELAS_TPV FROM TIPO_VENDA WHERE COD_TPV = :CODTPV');
    ParamByName('codtpv').AsInteger := strtoint(EdtCodTPV.text);
    ExecOrOpen;
    if FieldByName('qtdparcelas_tpv').Value > 0 then
      result := false // a prazo
    else
      result := true; // a vista
  end;
  dm.IBTransaction.Commit;
  dm.Consulta.Close;
end;

procedure TFrmVenda.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if QBuscaItensORDEM.AsInteger > 0 then
      begin
         EditaItem := True;
         OrdemItem := QBuscaItensORDEM.AsInteger;
         EdtCodPro.Text := QBuscaItensCOD_PRO.AsString;
         EdtNomePro.Text := QBuscaItensNOME_PRO.AsString;
         EdtQuant.Value := QBuscaItensQUANT.AsFloat;
         EdtValorUnit.Value := QBuscaItensVALOR.AsFloat;
         EdtDescVr.Value := QBuscaItensDESCONTO.AsFloat;
         EdtDescVrExit( nil );
      end;
end;

function TFrmVenda.DescontoTPV(codtpv: integer): real;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with dm.Consulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DESCONTO_TPV, ACRESCIMO_TPV ' + 'FROM TIPO_VENDA ' +
        'WHERE COD_TPV = :COD');
    ParamByName('cod').AsInteger := codtpv;
    ExecOrOpen;
    if FieldByName('desconto_tpv').AsCurrency > 0 then
      result := FieldByName('desconto_tpv').AsCurrency * -1
    else if FieldByName('acrescimo_tpv').AsCurrency > 0 then
      result := FieldByName('acrescimo_tpv').AsCurrency
    else
      result := 0;
  end;
  dm.IBTransaction.Commit;
  dm.Consulta.Close;
end;

procedure TFrmVenda.BuscaItens;
var
  CTotalBruto, CDesconto: currency;
begin
  CTotalBruto := 0;
  CDesconto := 0;
  if IBTRVenda.Active then
    IBTRVenda.Commit;
  IBTRVenda.StartTransaction;
  with QBuscaItens do
  begin
    Close;
    SQL.Clear;
    SQL.text := sSql;
{    SQL.Add(' LEFT OUTER JOIN GRUPO_ICMS G');

    if bNoEstado then
      SQL.Add(' ON (P.ICMS_CF_EST = G.COD_GRP)')
    else
      SQL.Add(' ON (P.ICMS_CF_FORA = G.COD_GRP)');}

    SQL.Add(' WHERE I.COD_VEN = :CODVEN ' + ' ORDER BY I.ORDEM');

    ParamByName('codven').AsInteger := strtoint(EdtCod.text);
    Open;
    First;
    while not eof do
    begin
      CTotalBruto := CTotalBruto +
        (QBuscaItensQUANT.AsCurrency * QBuscaItensVALOR.AsCurrency);
      CDesconto := CDesconto + QBuscaItensDESCONTO.AsCurrency;
      next;
    end;
    EdtTotalBruto.Caption := FormatFloat( '0.00', CTotalBruto );
    EdtTotalDesconto.Caption := FormatFloat( '0.00', CDesconto );
    EdtTotalLiquido.Caption := FormatFloat( '0.00', CTotalBruto - CDesconto );
  end;
  IBTRVenda.CommitRetaining;
end;

procedure TFrmVenda.BuscaPadroes;
begin
   { busca codigo do cliente, vendedor e tipo de venda }
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.Text:= 'SELECT CLIENTE_PADRAO_VENDA, VENDEDOR_PADRAO_VENDA, ' +
                        'TIPO_VENDA_PADRAO_VENDA   ' +
                        'FROM PARAMETROS           ' +
                        'WHERE COD_EMP = :CODEMP';
             Parambyname('codemp').AsInteger:= iEmp;
             Open;
             EdtCodcli.Text    := fieldbyname('cliente_padrao_venda').AsString;
             EdtCodTPV.Text  := fieldbyname('tipo_venda_padrao_venda').AsString;
             EdtCodVend.Text   := fieldbyname('vendedor_padrao_venda').AsString;
             Close;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar os parametros');
     end;
   finally
     dm.QConsulta.Close;
   end;
   EdtNomeVend.Text := DM.RetornaStringTabela( 'NOME_VEND', 'vendedor', 'cod_vend', StrToInt( EdtCodVend.Text ) );
   EdtNomecli.Text := dm.RetornaStringTabela('nome_cli', 'cliente', 'cod_cli', StrToInt( EdtCodcli.Text ) );
   EdtNomeTPV.Text :=  dm.RetornaStringTabela('nome_tpv', 'tipo_venda', 'cod_tpv', StrToInt( EdtCodTPV.Text ));

   { busca o nome do cliente e o tipo de venda para colocar no statusbar }

end;

procedure TFrmVenda.CarregaParametros;
var
   EditUnid: Boolean;
begin
   EditUnid := TDicLib.GetParam( iEmp, 'FATURAMENTO', 'VENDA_EDITAR_VALORUNITARIO', DM.IBDatabase,
                    'NAO', 'SIM;NAO', 'FATURAMENTO', 'CHECK', 'PERMITIR EDITAR O VALOR UNITARIO NA VENDA' ).Valor = 'SIM';
   EdtValorUnit.ReadOnly := not EditUnid;
   EdtValorUnit.TabStop := EditUnid;
end;

procedure TFrmVenda.LimpaItens;
begin
  EdtCodPro.Clear;
  EdtNomePro.Clear;
  EdtQuant.text := '1';
  EdtValorUnit.Clear;
  EdtDescVr.Clear;
  EdtTotalProd.Clear;
  EdtEstoque.Clear;
end;

function TFrmVenda.Ordem: integer;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with QOrdem do
  begin
    Close;
    ParamByName('codven').AsInteger := strtoint(EdtCod.text);
    Open;
    result := QOrdemORDEM.AsInteger + 1;
  end;
  dm.IBTransaction.Commit;
  QOrdem.Close;
end;

procedure TFrmVenda.EdtCodcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f3 then
    BtnConsCli.Click
  else if Key = vk_f2 then
    BtnAddCli.Click;
end;

procedure TFrmVenda.BtnConsCliClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsCli, FrmConsCli);
  FrmConsCli.tag := 10;
  FrmConsCli.showmodal;
end;

procedure TFrmVenda.BtnAddCliClick(Sender: TObject);
begin
  inherited;
  BuscaFormulario( TFrmCadCli, True );
end;

procedure TFrmVenda.EdtCodcliExit(Sender: TObject);
var
  bAchou, bBloqueado: boolean;
begin
  inherited;
  if ToolBar1.Focused then
    exit;
  if EdtCodcli.text = '' then
  begin
    AlertaCad('Digite o Código do Cliente');
//    EdtCodcli.SetFocus;
    exit;
  end;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.Consulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT C.COD_CLI, C.NOME_CLI, C.BLOQUEADO_CLI,  ' +
            'C.CONTROLAR_LIMITE, C.ESTRES_CLI, V.NOME_CON, V.DESCONTO_CON  ' +
            'FROM CLIENTE C ' + 'INNER JOIN CONVENIO V ' +
            'ON (C.COD_CON = V.COD_CON) ' + 'WHERE C.COD_CLI = :CODCLI');
        ParamByName('codcli').AsInteger := strtoint(EdtCodcli.text);
        ExecOrOpen;
        if recordcount > 0 then
        begin
          bAchou := true;
          if trim(FieldByName('controlar_limite').AsString) = 'S' then
            bContLimiteCli := true
          else
            bContLimiteCli := false;

          EdtNomecli.text := FieldByName('nome_cli').AsString;

          if trim(FieldByName('bloqueado_cli').AsString) = 'S' then
          begin
            bBloqueado := true;
            AlertaCad('Cliente Bloqueado');
            EdtNomecli.Clear;
            LConv.Caption := '';
//            EdtCodcli.SetFocus;
          end
          else
          begin
            bBloqueado := false;
            LConv.Caption := FieldByName('nome_con').AsString;
          end;
        end
        else
        begin
          bAchou := false;
          AlertaCad('Cliente não Cadastrado');
          EdtNomecli.Clear;
          LConv.Caption := '';
//          EdtCodcli.SetFocus;
        end;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      bAchou := false;
      AlertaCad('Erro ao Buscar o Cliente');
      EdtNomecli.Clear;
      LConv.Caption := '';
//      EdtCodcli.SetFocus;
    end;
  finally
    dm.Consulta.Close;
  end;

  if (bAchou) and (strtoint(EdtCodcli.text) <> iClienteVista) then
  begin
    Application.CreateForm(TFrmSitCli, FrmSitCli);
    FrmSitCli.tag := 0;
    FrmSitCli.showmodal;

    if not bBloqueado then
    begin
      if iAtrasoMaximo > 0 then
      begin
        if iDiasAtrazo > iAtrasoMaximo then
        begin
          AlertaCad('O Cliente ultrapassou o atraso máximo');
          Application.CreateForm(TFrmSenhaLiberaVenda, FrmSenhaLiberaVenda);
          FrmSenhaLiberaVenda.tag := 2;
          FrmSenhaLiberaVenda.showmodal;
          if not bVendaLiberada then
            EdtCodcli.SetFocus;
          bVendaLiberada := false;
        end;
      end;
      if bContLimiteCli then
      begin
        if cSaldoCliente < 0 then
        begin
          AlertaCad('Cliente sem Saldo, verifique o Limite do Cliente');
          Application.CreateForm(TFrmSenhaLiberaVenda, FrmSenhaLiberaVenda);
          FrmSenhaLiberaVenda.tag := 4;
          FrmSenhaLiberaVenda.showmodal;
          if Not bVendaLiberada then
            EdtCodcli.SetFocus;
          bVendaLiberada := false;
        end;
      end;
    end;
  end;
end;

procedure TFrmVenda.BtnConsTPVClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsTipoVenda, FrmConsTipoVenda);
  FrmConsTipoVenda.tag := 3;
  FrmConsTipoVenda.showmodal;
end;

procedure TFrmVenda.BtnAddTPVClick(Sender: TObject);
begin
  inherited;
  BuscaFormulario( TFrmCadTipoVenda,  True );
end;

procedure TFrmVenda.BtnConsProClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsProd, FrmConsProd);
  FrmConsProd.tag := 16;
  FrmConsProd.showmodal;
end;

procedure TFrmVenda.BtnAddProClick(Sender: TObject);
begin
  inherited;
  BuscaFormulario( TFrmCadProduto, True );
end;

procedure TFrmVenda.EdtCodProExit(Sender: TObject);
var
  bAux: boolean;
begin
  inherited;
  bAux := false;

  if (DBGrid1.Focused) or (ToolBar1.Focused) then
  begin
    exit;
    abort;
  end;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        Close;
        SQL.Clear;
        if length(trim(EdtCodPro.text)) > 7 then
        begin
          SQL.Add(
            'SELECT COD_PRO, NOME_PRO, VALOR_PRO, PROMOCAO_PRO, PRECO_CUSTO, PRECO_PRAZO_PRO '
              + 'FROM PRODUTO WHERE CODIGO_BARRA_PRO = ' + #39 + trim
              (EdtCodPro.text) + #39);
        end
        else
        begin
          SQL.Add(
            'SELECT COD_PRO, NOME_PRO, VALOR_PRO, PROMOCAO_PRO, PRECO_CUSTO, PRECO_PRAZO_PRO '
              + 'FROM PRODUTO WHERE COD_PRO = :CODPRO');
          ParamByName('codpro').AsInteger := strtoint(EdtCodPro.text);
        end;
        Open;
        if not(FieldByName('cod_pro').IsNull) then
        begin
          bAux := true;
          EdtCodPro.text := FieldByName('cod_pro').AsString;
          EdtNomePro.text := FieldByName('nome_pro').AsString;
          cPrecoCusto := FieldByName('preco_custo').AsCurrency;

          if not bAvista then
          begin
            bPromocao := false;
            EdtValorUnit.text := FieldByName('PRECO_PRAZO_PRO').AsString;
          end
          else
          begin
            if FieldByName('promocao_pro').AsCurrency > 0 then
            begin
              bPromocao := true;
              EdtValorUnit.text := FieldByName('promocao_pro').AsString;
            end
            else
            begin
              bPromocao := false;
              EdtValorUnit.text := FieldByName('valor_pro').AsString;
            end;
          end;

          EdtQuant.SetFocus;
        end
        else
        begin
          bAux := false;
          AlertaCad('Produto não Cadastrado');
          EdtNomePro.Clear;
          EdtEstoque.Clear;
//          EdtCodPro.SetFocus;
        end;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      bAux := false;
      AlertaCad('Erro ao Buscar o Produto');
      EdtNomePro.Clear;
//      EdtCodPro.SetFocus;
    end;
  finally
    dm.Consulta.Close;
  end;

  if bAux then
    EdtEstoque.text := currtostr
      (dm.BuscaEstoqueProduto(strtoint(EdtCodPro.text), iEmp));

end;

procedure TFrmVenda.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f3 then
    BtnConsPro.Click
  else if Key = vk_f2 then
    BtnAddPro.Click;
end;

procedure TFrmVenda.BtnGravaClick(Sender: TObject);
var
  cEstoque: currency;
begin
  inherited;
  if EdtQuant.text = '0' then
  begin
    AlertaCad('Digite a Quantidade');
//    EdtQuant.SetFocus;
    exit;
  end;

  if EdtValorUnit.text = '' then
  begin
    AlertaCad('Digite o Valor Unitário');
//    EdtQuant.SetFocus;
    exit;
  end;

  { Verifica se o estoque esta ou vai ficar negativo }
  if not bEstoqueNegativo then
  begin
    cEstoque := dm.BuscaEstoqueProduto(strtoint(EdtCodPro.text), iEmp);

    if cEstoque - StrToCurr(EdtQuant.text) < 0 then
    begin
      AlertaCad('Produto com estoque negativo');
//      EdtQuant.SetFocus;
      exit;
      abort;
    end;
  end;

  if IBTRVenda.Active then
    IBTRVenda.Commit;
  IBTRVenda.StartTransaction;
  try
    try
      if EditaItem then
      begin
      with IBSQLVenda do
      begin
        Close;
        SQL.Clear;
        SQL.text := 'update itens_venda set DESCONTO=:desconto,' +
        ' QUANT=:quant, VALOR=:valor, VALOR_CUSTO=:custo,'+
        ' PRODUTO_PROMOCAO=:promocao, CANCELADO=:cancelado,'+
        ' VENDA_CANCELADA=:vendacancel, COD_VEND=:codvend ' +
        ' where COD_EMP=:codemp and COD_VEN=:codven and ORDEM=:ordem';

        ParamByName('codven').AsInteger := strtoint(EdtCod.text);
        ParamByName('ordem').AsInteger := OrdemItem;
        ParamByName('desconto').AsCurrency := StrToCurr(EdtDescVr.text);
        ParamByName('codemp').AsInteger := iEmp;
        ParamByName('quant').AsCurrency := StrToCurr(EdtQuant.text);
        ParamByName('valor').AsCurrency := StrToCurr(EdtValorUnit.text);
        ParamByName('custo').AsCurrency := cPrecoCusto;
        if bPromocao then
          ParamByName('promocao').AsString := 'S'
        else
          ParamByName('promocao').AsString := 'N';
        ParamByName('cancelado').AsInteger := 0;
        ParamByName('vendacancel').AsInteger := 0;
        ParamByName('codvend').AsInteger := strtoint(EdtCodVend.text);
        ExecOrOpen;
        OrdemItem := 0;
        EditaItem := false;
      end;

      end
      else
      begin
      with IBSQLVenda do
      begin
        Close;
        SQL.Clear;
        SQL.text :=
          'INSERT INTO ITENS_VENDA (COD_VEN, COD_PRO, ORDEM, DESCONTO,      ' +
          'COD_EMP, QUANT, VALOR, VALOR_CUSTO, PRODUTO_PROMOCAO, CANCELADO, ' +
          'VENDA_CANCELADA, COD_VEND)                                       ' +
          'VALUES(:CODVEN, :CODPRO, :ORDEM, :DESCONTO, :CODEMP, :QUANT,     ' +
          ':VALOR, :CUSTO, :PROMOCAO, :CANCELADO, :VENDACANCEL, :CODVEND)';

        ParamByName('codven').AsInteger := strtoint(EdtCod.text);
        ParamByName('codpro').AsInteger := strtoint(EdtCodPro.text);
        ParamByName('ordem').AsInteger := Ordem;
        ParamByName('desconto').AsCurrency := StrToCurr(EdtDescVr.text);
        ParamByName('codemp').AsInteger := iEmp;
        ParamByName('quant').AsCurrency := StrToCurr(EdtQuant.text);
        ParamByName('valor').AsCurrency := StrToCurr(EdtValorUnit.text);
        ParamByName('custo').AsCurrency := cPrecoCusto;
        if bPromocao then
          ParamByName('promocao').AsString := 'S'
        else
          ParamByName('promocao').AsString := 'N';
        ParamByName('cancelado').AsInteger := 0;
        ParamByName('vendacancel').AsInteger := 0;
        ParamByName('codvend').AsInteger := strtoint(EdtCodVend.text);
        ExecOrOpen;
      end;
      end;
      IBTRVenda.Commit;
    except
      IBTRVenda.Rollback;
      AlertaCad('Erro ao Gravar o Item');
      EdtCodPro.SetFocus;
    end
  finally
    IBSQLVenda.Close;
    LimpaItens;
    BuscaItens;
    EdtCodPro.SetFocus;
  end;
end;

procedure TFrmVenda.BtnExcluiClick(Sender: TObject);
var
  iAuxOrdem: integer;
begin
  inherited;
  if Application.MessageBox('Confirma a Exclusão do Item?', 'Atenção',
    mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
  begin
    iAuxOrdem := QBuscaItensORDEM.AsInteger;
    if IBTRVenda.Active then
      IBTRVenda.Commit;
    IBTRVenda.StartTransaction;
    try
      try
        with IBSQLVenda do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM ITENS_VENDA ' +
              'WHERE COD_VEN = :CODVEN AND ORDEM = :ORDEM');
          ParamByName('codven').AsInteger := strtoint(EdtCod.text);
          ParamByName('ordem').AsInteger := iAuxOrdem;
          ExecOrOpen;
        end;
        IBTRVenda.Commit;
      except
        IBTRVenda.Rollback;
        AlertaCad('Erro ao Excluir o Item');
      end;
    finally
      IBSQLVenda.Close;
      LimpaItens;
      BuscaItens;
    end;
  end;
end;

procedure TFrmVenda.QBuscaItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  QBuscaItensCALC_TOTAL.AsCurrency :=
    ((QBuscaItensQUANT.AsCurrency * QBuscaItensVALOR.AsCurrency)
      - QBuscaItensDESCONTO.AsCurrency);
end;

procedure TFrmVenda.btnPedidoClick(Sender: TObject);
var
   Total: Double;
   RelFile: String;
begin
     RelFile := ExtractFilePath( Application.ExeName ) + 'Report\Pedido.fr3';
     if not FileExists( RelFile ) then
        begin
           AlertaCad( 'Arquivo Pedido.fr3 não encontrado!' );
           Exit;
        end;
     frxR1.LoadFromFile( RelFile );
     if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
     dm.IBTransaction.StartTransaction;

     // DADOS DA EMPRESA
     dm.QConsulta.Close;
     dm.QConsulta.SQL.text := 'select e.*, p.caminho_logomarca_danfe '+
     ' from EMPRESA e ' +
     ' left outer join parametros p '+
     ' on ( p.cod_emp = e.cod_emp ) '+
     'where e.COD_EMP=:CODEMP';
     dm.QConsulta.ParamByName('CODEMP').AsInteger := iEmp;
     dm.QConsulta.Open;
     if dm.QConsulta.IsEmpty then
        begin
           AlertaCad( 'Erro ao buscar dados da empresa' );
           dm.QConsulta.Close;
           dm.IBTransaction.Commit;
           exit;
        end;
     frxR1.Variables['razao_emp'] := QuotedStr( dm.QConsulta.FieldByName('RAZAO_EMP').AsString );
     frxR1.Variables['endereco_emp'] := QuotedStr( dm.QConsulta.FieldByName('END_EMP').AsString );
     frxR1.Variables['numero_emp'] := QuotedStr( dm.QConsulta.FieldByName('NUMERO_EMP').AsString );
     frxR1.Variables['cep_emp'] := QuotedStr( dm.QConsulta.FieldByName('CEP_EMP').AsString );
     frxR1.Variables['cid_emp'] := QuotedStr( dm.QConsulta.FieldByName('CID_EMP').AsString );
     frxR1.Variables['estado_emp'] := QuotedStr( dm.QConsulta.FieldByName('EST_EMP').AsString );
     frxR1.Variables['tel_emp'] := QuotedStr( dm.QConsulta.FieldByName('TEL_EMP').AsString );
     frxR1.Variables['logo'] := QuotedStr( dm.QConsulta.FieldByName('caminho_logomarca_danfe').AsString );
     dm.QConsulta.Close;

     if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
     dm.IBTransaction.StartTransaction;

     //DADOS DO CLIENTE
     dm.QConsulta.SQL.Text := 'select * from CLIENTE where COD_CLI=:CODCLI';
     dm.QConsulta.ParamByName('CODCLI').AsString := frmVenda.EdtCodcli.Text;
     dm.QConsulta.Open;
     if dm.QConsulta.IsEmpty then
        begin
           AlertaCad( 'Erro ao buscar dados do cliente' );
           dm.QConsulta.Close;
           dm.IBTransaction.Commit;
           exit;
        end;
     frxR1.Variables['nome_cli'] := QuotedStr( dm.QConsulta.FieldByName('NOME_CLI').AsString );
     frxR1.Variables['end_cli'] := QuotedStr( dm.QConsulta.FieldByName('ENDRES_CLI').AsString );
     frxR1.Variables['numero_cli'] := QuotedStr( dm.QConsulta.FieldByName('NUMRES_CLI').AsString );
     frxR1.Variables['cep_cli'] := QuotedStr( dm.QConsulta.FieldByName('CEPRES_CLI').AsString );
     frxR1.Variables['cid_cli'] := QuotedStr( dm.QConsulta.FieldByName('CIDRES_CLI').AsString );
     frxR1.Variables['estado_cli'] := QuotedStr( dm.QConsulta.FieldByName('ESTRES_CLI').AsString );
     dm.QConsulta.Close;

     dm.IBTransaction.Commit;

     if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
     dm.IBTransaction.StartTransaction;
     itens.SQL.Text := SQLItens;
     itens.SQL.Add( 'where COD_VEN=:CODVENDA');
     itens.ParamByName('CODVENDA').AsString := frmVenda.EdtCod.Text;
     itens.Open;
     if itens.IsEmpty then
        begin
           AlertaCad( 'Erro ao buscar itens da venda' );
           dm.QConsulta.Close;
           dm.IBTransaction.Commit;
           exit;
        end;
    total := 0;
    Itens.First;
    while not Itens.Eof do
       begin
          total := Total + ItensCALC_TOTAL.AsCurrency;
          Itens.Next;
       end;
    frxR1.Variables['total_geral'] := QuotedStr( FormatFloat('###,###,##0.00',total ));
    frxR1.Variables['desconto'] := QuotedStr( FormatFloat('-###,###,##0.00',StrToCurr( EdtTotalDesconto.Caption ) ));
    frxR1.Variables['valor_pagar'] := QuotedStr( FormatFloat('###,###,##0.00',total - StrToCurr( EdtTotalDesconto.Caption )));
    frxR1.Variables['troco'] := QuotedStr( FormatFloat('###,###,##0.00',0 ));
    itens.First;
    frxR1.Variables['obs'] := QuotedStr( FrmVenda.edtobs.Text );
//   frxR1.Variables['razao_emp'] := QuotedStr( 'Teste' );
   frxR1.ShowReport( true );
   dm.IBTransaction.Commit;

end;

procedure TFrmVenda.btnPrevendaClick(Sender: TObject);
begin
  inherited;
  ImprimeVenda;
end;

procedure TFrmVenda.BtnGravarClick(Sender: TObject);
begin
  inherited;
  ToolBar1.SetFocus;
  if (bGrava) and (not dm.Acesso('M002', 'I')) then
  begin
    Application.MessageBox
      ('Você não tem permissão para efetuar esta operação.', 'Aviso',
      mb_applmodal + mb_iconInformation + mb_OK + mb_defbutton1);
    abort;
    exit;
  end;
  if IBTRVenda.Active then
    IBTRVenda.Commit;
  IBTRVenda.StartTransaction;
  if bGrava then
  begin
    try
      try
        with QInsVenda do
        begin
          Close;
          ParamByName('data').AsDate := strtodate(EdtData.text); ;
          ParamByName('codemp').AsInteger := iEmp;
          ParamByName('codcai').AsInteger := iCaixa;
          ParamByName('datahora').AsDateTime := now;
          ParamByName('codusu').AsInteger := iCodUsu;
          ParamByName('cupom').AsInteger := 0;
          ParamByName('codcli').AsInteger := strtoint(EdtCodcli.text);
          ParamByName('codvend').AsInteger := strtoint(EdtCodVend.text);
          ParamByName('codtpv').AsInteger := strtoint(EdtCodTPV.text);
          ParamByName('codfiscal').AsString := '';
          ParamByName('serie').AsString := '';
          ParamByName('numero').AsInteger := 0;
          ParamByName('cancelada').AsInteger := 0;
          ParamByName('ccf').AsInteger := 0;
          ParamByName('cer').AsInteger := 0;
          if OPConsignada.ItemIndex = 1 then
            ParamByName('CONSIGNADA').AsString := 'S'
          else
          if OPConsignada.ItemIndex = 2 then
            ParamByName('CONSIGNADA').AsString := 'F'

          else
            ParamByName('CONSIGNADA').AsString := 'N';

          Open;
          EdtCod.text := QInsVendaCODVEN.AsString;
          QAux.Close;
          QAux.SQL.Text := 'update vendas set OBS=:obs where COD_VEN=:cod_ven and COD_EMP=:cod_emp';
          QAux.ParamByName( 'cod_ven' ).AsInteger := QInsVendaCODVEN.AsInteger;
          QAux.ParamByName( 'cod_emp' ).AsInteger := iEmp;
          QAux.ParamByName( 'obs' ).AsString  := edtobs.Text;
          QAux.ExecOrOpen;
          QAux.Close;
        end;
        IBTRVenda.Commit;
        bVendaAberta := true;
        Panel6.Enabled := false;
        Panel5.Enabled := true;
        { VERIFICA O STATUS DO DESCONTO }
        if bDescontoItens then
        begin
          EdtDescPerc.Enabled := true;
          EdtDescVr.Enabled := true;
        end
        else
        begin
          EdtDescPerc.Enabled := false;
          EdtDescVr.Enabled := false;
        end;
        BtnFinaliza.Enabled := true;
        Botoes('G');
        LimpaItens;
        DBGrid1.SendToBack;
        EdtCodPro.SetFocus;
      except
        IBTRVenda.Rollback;
        bVendaAberta := false;
        AlertaCad('Erro ao Gravar a Venda');
        Panel5.Enabled := false;
        Panel6.Enabled := true;
        BtnFinaliza.Enabled := false;
      end;
    finally
      QInsVenda.Close;
    end;
  end
  else
  begin
    try
      try
        with IBSQLVenda do
        begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE VENDAS SET DATA_VEN = :DATA, COD_CLI = :CODCLI,   ' +
              'COD_TPV = :CODTPV, COD_VEND = :CODVEND, CONSIGNADA = :CONSIGNADA, OBS=:obs '
              + 'WHERE COD_VEN = :CODVEN');
          ParamByName('codcli').AsInteger := strtoint(EdtCodcli.text);
          ParamByName('codtpv').AsInteger := strtoint(EdtCodTPV.text);
          ParamByName('codvend').AsInteger := strtoint(EdtCodVend.text);
          ParamByName('codven').AsInteger := strtoint(EdtCod.text);
          ParamByName('data').AsDate := strtodate(EdtData.text);
          ParamByName('obs').AsString := edtobs.Text;
          if OPConsignada.ItemIndex = 1 then
            ParamByName('CONSIGNADA').AsString := 'S'
          else
            ParamByName('CONSIGNADA').AsString := 'N';
          ExecOrOpen;
        end;
        IBTRVenda.Commit;
        bVendaAberta := true;
        Panel6.Enabled := false;
        Panel5.Enabled := true;
        { VERIFICA O STATUS DO DESCONTO }
        if bDescontoItens then
        begin
          EdtDescPerc.Enabled := true;
          EdtDescVr.Enabled := true;
        end
        else
        begin
          EdtDescPerc.Enabled := false;
          EdtDescVr.Enabled := false;
        end;
        BtnFinaliza.Enabled := true;
        Botoes('G');
        LimpaItens;
        DBGrid1.SendToBack;
        EdtCodPro.SetFocus;
      except
        IBTRVenda.Rollback;
        bVendaAberta := false;
        AlertaCad('Erro ao Gravar a Venda' + #13 + 'Certifique-se que você tem um caixa cadastrado' );
        Panel5.Enabled := false;
        Panel6.Enabled := true;
        BtnFinaliza.Enabled := false;
        EdtCodcli.SetFocus;
      end;
    finally
      IBSQLVenda.Close;
      BuscaItens;
    end;
  end;
end;

procedure TFrmVenda.FormShow(Sender: TObject);
begin
  inherited;
  SQLItens := Itens.SQL.text;
  iCodPreVenda := 0;
  DBGrid1.SendToBack;
  Panel6.Enabled := false;
  Panel5.Enabled := false;

  { VERIFICA SE TEM ACESSO PARA ALTERAR O VALOR DOS PRODUTOS }
  if (not dm.Acesso('A001', 'I')) then
    EdtValorUnit.ReadOnly := true
  else
    EdtValorUnit.ReadOnly := false;

  if tag = 0 then
  begin
    bGrava := true;
    if not dm.Acesso('M002', 'I') then
    begin
      Application.MessageBox(
        'Você não tem permissão para efetuar esta operação.', 'Aviso',
        mb_applmodal + mb_iconInformation + mb_OK + mb_defbutton1);
      Botoes('C');
    end
    else
    begin
      if not DicFluxo.AberturaFechamento.VerificarVendas then
         begin
            Botoes('C');
            Exit;
         end;
      Panel6.Enabled := true;
      Botoes('N');
      LConv.Caption := '';
      EdtData.text := DateToStr(date);
      EdtData.SetFocus;
    end;
  end
  else if tag = 1 then
  begin
    // ToolBar1.SetFocus;
    Botoes('G');
  end;
  if Tag <> 1 then
     begin
        BtnFinaliza.Enabled := false;
        OPConsignada.ItemIndex := 0;
        BtnNovoClick( nil );
     end;
end;

procedure TFrmVenda.BtnNovoClick(Sender: TObject);
begin
  inherited;
  iCodPreVenda := 0;
  ToolBar1.SetFocus;
  if bVendaAberta = true then
  begin
    AlertaCad('Venda Aberta');
    exit;
  end;
  if IBTRVenda.Active then
    IBTRVenda.Commit;
  QBuscaItens.Close;
  if not dm.Acesso('M002', 'I') then
  begin
    Application.MessageBox
      ('Você não tem permissão para efetuar esta operação.', 'Aviso',
      mb_applmodal + mb_iconInformation + mb_OK + mb_defbutton1);
    Panel6.Enabled := false;
    Panel5.Enabled := false;
    abort;
    exit;
  end;
  if not DicFluxo.AberturaFechamento.VerificarVendas then
     begin
        Botoes('C');
        Exit;
     end;
  Botoes('N');
  bGrava := true;
  OPConsignada.ItemIndex := 0;
  LConv.Caption := '';
  Panel6.Enabled := true;
  Panel5.Enabled := false;
  EdtData.text := DateToStr(date);
  BtnFinaliza.Enabled := false;
  EdtTotalLiquido.Caption := '0,00';
  EdtTotalBruto.Caption := '0,00';
  EdtTotalDesconto.Caption := '0,00';
  FrmVenda.tag := 0;
  BtnGrava.Enabled := true;
  BtnExclui.Enabled := true;
  BuscaPadroes;
  EdtCodcli.SetFocus;
end;

procedure TFrmVenda.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  ToolBar1.SetFocus;
  bVendaAberta := false;
  Botoes('C');
  LConv.Caption := '';
  ToolBar1.SetFocus;
  Panel6.Enabled := false;
  Panel5.Enabled := false;
end;

procedure TFrmVenda.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if not dm.Acesso('M002', 'A') then
  begin
    Application.MessageBox
      ('Você não tem permissão para efetuar esta operação.', 'Aviso',
      mb_applmodal + mb_iconInformation + mb_OK + mb_defbutton1);
    abort;
    exit;
  end;

  bGrava := false;
  ToolBar1.SetFocus;
  Botoes('A');
  Panel6.Enabled := true;
  BtnFinaliza.Enabled := false;
  EdtData.SetFocus;
end;

procedure TFrmVenda.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  ToolBar1.SetFocus;
  if not dm.Acesso('M002', 'E') then
  begin
    Application.MessageBox
      ('Você não tem permissão para efetuar esta operação.', 'Aviso',
      mb_applmodal + mb_iconInformation + mb_OK + mb_defbutton1);
    abort;
    exit;
  end;

  if Application.MessageBox('Confirma a Exclusão da Venda?', 'Atenção',
    mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
  begin
    if IBTRVenda.Active then
      IBTRVenda.Commit;
    QBuscaItens.Close;
    IBTRVenda.StartTransaction;
    try
      try
        with IBSQLVenda do
        begin
          Close;
          SQL.Clear;
          SQL.Add('DELETE FROM VENDAS WHERE COD_VEN = :CODVEN');
          ParamByName('codven').AsInteger := strtoint(EdtCod.text);
          ExecOrOpen;
        end;
        IBTRVenda.Commit;
        bVendaAberta := false;
        Limpaedit(FrmVenda);
        LConv.Caption := '';
        ToolBar1.SetFocus;
        Panel6.Enabled := false;
        Panel5.Enabled := false;
        BtnFinaliza.Enabled := false;
        Botoes('E');
      except
        IBTRVenda.Rollback;
        bVendaAberta := true;
        AlertaCad('Erro ao Excluir a Venda');
      end;
    finally
      IBSQLVenda.Close;
      iCodPreVenda := 0;
    end;
  end;
end;

procedure TFrmVenda.EdtDescVrExit(Sender: TObject);
begin
  inherited;
  EdtTotalProd.text := currtostr
    ( RoundTo( RoundTo( (StrToCurr(EdtQuant.text) * StrToCurr(EdtValorUnit.text)), -2 ) - StrToCurr
      (EdtDescVr.text) , -2 ) );
  if Sender <> nil then
     BtnGrava.Click;
end;

procedure TFrmVenda.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsVendas, FrmConsVendas);
  FrmConsVendas.tag := 0;
  FrmConsVendas.showmodal;
end;

procedure TFrmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f12 then
    BtnFinaliza.Click;

  if Key = vk_escape then
  begin
    if PanelAuxVenda.Visible then
    begin
      ToolBar1.SetFocus;
      PanelAuxVenda.Visible := false;
    end;
//    else
  //    Close;
  end;

  if (ssCtrl in Shift) and (chr(Key) in ['P', 'p']) then
  begin
    Application.CreateForm(TFrmConsProd, FrmConsProd);
    FrmConsProd.tag := 999;
    FrmConsProd.showmodal;
  end;

  if (ssCtrl in Shift) and (chr(Key) in ['Z', 'z']) then // pre venda
  begin
    if (iCodPreVenda = 0) then
    begin
      ToolBar1.SetFocus;
      PanelAuxVenda.Visible := true;
      LabelAuxVenda.Caption := 'Senha Pré Venda';
      EdtAuxVenda.tag := 0;
      EdtAuxVenda.Clear;
      EdtAuxVenda.SetFocus;
    end
    else
    begin
      AlertaCad('Somente uma pre-venda por venda!');
    end;
  end;
  inherited;
end;

procedure TFrmVenda.EdtQuantExit(Sender: TObject);
begin
  inherited;
  if ToolBar1.Focused then
    exit;

  if StrToCurr(EdtQuant.text) = 0 then
  begin
    AlertaCad('Digite a Quantidade');
//    EdtQuant.SetFocus;
    exit;
  end;
end;

procedure TFrmVenda.EdtValorUnitExit(Sender: TObject);
begin
  inherited;
  if EdtValorUnit.text = '0' then
  begin
    EdtValorUnit.SetFocus;
    exit;
  end;
  EdtTotalProd.text := currtostr(RoundTo( StrToCurr(EdtQuant.text) * StrToCurr
      (EdtValorUnit.text), -2 ) );
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;

  if IBTRVenda.Active then
    IBTRVenda.Commit;

  QBuscaItens.SQL.Clear;
  QBuscaItens.SQL.text := sSql;

  QBuscaItens.Close;
  QOrdem.Close;
  Action := caFree;
end;

procedure TFrmVenda.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  inherited;
  if bVendaAberta then
  begin
    AlertaCad('Venda Aberta');
    CanClose := false;
  end;
end;

procedure TFrmVenda.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaParametros;
   EdtTotalLiquido.Caption := '0,00';
  EdtTotalBruto.Caption := '0,00';
  EdtTotalDesconto.Caption := '0,00';
  pnlItensButtom.DoubleBuffered := True;
  sSql := QBuscaItens.SQL.text;
  EditaItem := False;
  OrdemItem:=0;
  { BUSCA PARAMETROS }
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ATRASO_MAXIMO, DESCONTO_TOTAL_VENDA, ' +
            'DESCONTO_ITEM_VENDA, CLIENTE_PADRAO_VENDA, ' +
            'SAIDAS_ESTOQUE_NEGATIVO ' +
            'FROM PARAMETROS WHERE COD_EMP = :CODEMP');
        ParamByName('codemp').AsInteger := iEmp;
        Open;

        if trim(FieldByName('desconto_total_venda').AsString) = 'S' then
          bDescontoVenda := true
        else
          bDescontoVenda := false;

        if trim(FieldByName('desconto_item_venda').AsString) = 'S' then
          bDescontoItens := true
        else
          bDescontoItens := false;

        if trim(FieldByName('saidas_estoque_negativo').AsString) = 'S' then
          bEstoqueNegativo := true
        else
          bEstoqueNegativo := false;

        iAtrasoMaximo := FieldByName('atraso_maximo').AsInteger;
        iClienteVista := FieldByName('cliente_padrao_venda').AsInteger;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      AlertaCad('Erro ao Buscar os Parâmetros');
    end;
  finally
    dm.Consulta.Close;
  end;
  OPConsignada.ItemIndex := 0;
end;

procedure TFrmVenda.EdtCodcliEnter(Sender: TObject);
begin
  inherited;
  EdtCodcli.SelectAll;
end;

procedure TFrmVenda.EdtCodProEnter(Sender: TObject);
begin
  inherited;
  EdtCodPro.SelectAll;
end;

procedure TFrmVenda.BtnFinalizaClick(Sender: TObject);
var
  cDescontoConvenio: currency;
begin
  inherited;
  ToolBar1.SetFocus;

  { VERIFICA SE TEM ITENS }
  if QBuscaItens.recordcount = 0 then
  begin
    AlertaCad('Nenhum Item Lançado');
    exit;
  end;

  { VERIFICA SE TOTAL > 0 }
  if StrToCurr(EdtTotalLiquido.Caption) < 0 then
  begin
    AlertaCad('Não pode finalizar uma venda com valor negativo');
    exit;
  end;

  { BUSCA O DESCONTO DO CONVÊNIO }
  cDescontoConvenio := 0;
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.Consulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT CO.DESCONTO_CON ' + 'FROM CLIENTE C ' +
            'INNER JOIN CONVENIO CO ' + 'ON (C.COD_CON = CO.COD_CON) ' +
            'WHERE C.COD_CLI = ' + EdtCodcli.text);
        ExecOrOpen;
        if FieldByName('DESCONTO_CON').IsNull then
          cDescontoConvenio := 0
        else
          cDescontoConvenio := FieldByName('DESCONTO_CON').AsCurrency;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      AlertaCad('Erro ao Buscar o Desconto do Convênio');
    end;
  finally
    dm.Consulta.Close;
  end;

  if OPConsignada.ItemIndex = 0 then
  begin

    Application.CreateForm(TFrmFechaVenda, FrmFechaVenda);
    FrmFechaVenda.EdtSubTotal.text := EdtTotalLiquido.Caption;
    FrmFechaVenda.EdtTotalLiquido.Text := EdtTotalLiquido.Caption;
    if bDescontoVenda then
    begin
      FrmFechaVenda.EdtPercentualDesconto.Enabled := true;
      FrmFechaVenda.EdtValorDesconto.Enabled := true;
      FrmFechaVenda.EdtPercentualDesconto.text := currtostr(cDescontoConvenio);
      FrmFechaVenda.EdtPercentualDesconto.Clear;
    end
    else
    begin
      FrmFechaVenda.EdtValorDesconto.Clear;
      FrmFechaVenda.EdtPercentualDesconto.Clear;
      FrmFechaVenda.EdtPercentualDesconto.Enabled := false;
      FrmFechaVenda.EdtValorDesconto.Enabled := false;
    end;
  end;

  bVendaAberta := false;
  if OPConsignada.ItemIndex = 0 then
  begin

    FrmFechaVenda.tag := FrmVenda.tag;
    FrmFechaVenda.showmodal;
  end
  else
    Application.MessageBox(
      'Fenda finalizada como consignada... Finalizar venda posteriormente como normal!'
        , 'Avisos Kadoshi System', mb_iconInformation + mb_OK);
end;

procedure TFrmVenda.EdtDescPercExit(Sender: TObject);
begin
  inherited;
  if StrToCurr(EdtDescPerc.text) > 0 then
  begin
    EdtDescVr.text :=  currtostr
      ( RoundTo( ( RoundTo( (StrToCurr(EdtQuant.text) * StrToCurr(EdtValorUnit.text)), -2 ) * StrToCurr
          (EdtDescPerc.text)) / 100, -2 ));
  end;
end;

procedure TFrmVenda.MemoOBSEnter(Sender: TObject);
begin
  inherited;
  FrmVenda.KeyPreview := false;
end;

procedure TFrmVenda.MemoOBSExit(Sender: TObject);
begin
  inherited;
  FrmVenda.KeyPreview := true;
end;

procedure TFrmVenda.EdtCodTPVEnter(Sender: TObject);
begin
  inherited;
  EdtCodTPV.SelectAll;
end;

procedure TFrmVenda.EdtCodTPVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f3 then
    BtnConsTPV.Click
  else if Key = vk_f2 then
    BtnAddTPV.Click;
end;

procedure TFrmVenda.EdtCodTPVExit(Sender: TObject);
var
  temp: string;
begin
  inherited;
  if ToolBar1.Focused then
    exit;
  EdtNomeTPV.text := Consulta('tipo_venda', EdtCodTPV, 'cod_tpv', 'nome_tpv',
    dm.IBTransaction, dm.QConsulta);
  temp := Consulta('tipo_venda', EdtCodTPV, 'cod_tpv', 'tabela_preco_tpv',
    dm.IBTransaction, dm.QConsulta);
  if temp = 'N' then
    bAvista := true
  else
    bAvista := false;
  if EdtNomeTPV.text = '' then
  begin
    AlertaCad('Tipo de Venda não Cadastrado');
//    EdtCodTPV.SetFocus;
    exit;
    abort;
  end;
end;

procedure TFrmVenda.EdtCodcliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #13, #8]) then
    Key := #0;
end;

procedure TFrmVenda.EdtCodVendEnter(Sender: TObject);
begin
  inherited;
  EdtCodVend.SelectAll;
end;

procedure TFrmVenda.EdtCodVendExit(Sender: TObject);
begin
  inherited;
  if ToolBar1.Focused then
    exit;

  if trim(EdtCodVend.text) = '' then
  begin
    AlertaCad('digite o código do vendedor');
//    EdtCodVend.SetFocus;
  end;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.text := 'SELECT COD_VEND, NOME_VEND ' + 'FROM VENDEDOR ' +
          'WHERE COD_VEND = :CODVEND AND ATIVO_VEND = ' + #39 + 'S' + #39;
        ParamByName('codvend').AsInteger := strtoint(EdtCodVend.text);
        Open;
        if not(FieldByName('cod_vend').IsNull) then
          EdtNomeVend.text := FieldByName('nome_vend').AsString
        else
        begin
          AlertaCad('Vendedor não cadastrado ou desativado');
//          EdtCodVend.SetFocus;
        end;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      AlertaCad('Erro ao buscar o vendedor');
    end;
  finally
    dm.QConsulta.Close;
  end;
  BtnGravar.Click;
end;

procedure TFrmVenda.EdtCodVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f3 then
    BtnConsVend.Click
  else if Key = vk_f2 then
    BtnAddVend.Click;
end;

procedure TFrmVenda.BtnConsVendClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsVend, FrmConsVend);
  FrmConsVend.tag := 2;
  FrmConsVend.showmodal;
end;

procedure TFrmVenda.BtnAddVendClick(Sender: TObject);
begin
  inherited;
  BuscaFormulario( TFrmCadVend, True );
end;

procedure TFrmVenda.EdtAuxVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if iCodPreVenda = 0 then
  begin
    if Key = vk_return then
    begin
      if (trim(EdtAuxVenda.text) <> '') and (bGrava) then
      begin
        GravaVendaPreVenda(trim(EdtAuxVenda.text));

        if (iCodPreVenda > 0) and (trim(EdtCod.text) <> '') then
        begin
          if GravaItensVendaPreVenda = 0 then
            AtualizaPreVenda;
        end;

        ToolBar1.SetFocus;
        PanelAuxVenda.Visible := false;
      end;
    end;
  end
  else
  begin
    AlertaCad('Somente uma pre-venda por venda');
//    ToolBar1.SetFocus;
    PanelAuxVenda.Visible := false;
  end;
end;

procedure TFrmVenda.GravaVendaPreVenda(const sSenha: string);
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with QPreVenda do
      begin
        Close;
        ParamByName('senha').AsString := sSenha;
        Open;
        if QPreVendaCOD_PRE.AsInteger > 0 then
        begin
          iCodPreVenda := QPreVendaCOD_PRE.AsInteger;
          EdtCodcli.text := QPreVendaCOD_CLI.AsString;
          EdtNomecli.text := QPreVendaNOME_CLI.AsString;
          EdtCodTPV.text := QPreVendaCOD_TPV.AsString;
          EdtNomeTPV.text := QPreVendaNOME_TPV.AsString;
          EdtCodVend.text := QPreVendaCOD_VEND.AsString;
          EdtNomeVend.text := QPreVendaNOME_VEND.AsString;
          BtnGravar.Click;
        end
        else
        begin
          AlertaCad('Pré-Venda não encontrada');
          iCodPreVenda := 0;
        end;
      end;
      if dm.IBTransaction.Active then
        dm.IBTransaction.Commit;
    except
      if dm.IBTransaction.Active then
        dm.IBTransaction.Rollback;
      AlertaCad('Erro gravando a venda');
    end;
  finally
    QPreVenda.Close;
  end;
end;

procedure TFrmVenda.GridDBItensDblClick(Sender: TObject);
begin
  inherited;
  DBGrid1DblClick( nil );
end;

function TFrmVenda.GravaItensVendaPreVenda: integer;
begin
  result := 0;

  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with QItensPreVenda do
  begin
    Close;
    ParamByName('codpre').AsInteger := iCodPreVenda;
    Open;
    while not eof do
    begin
      if IBTRVenda.Active then
        IBTRVenda.Commit;
      IBTRVenda.StartTransaction;
      try
        try
          IBSQLVenda.Close;
          IBSQLVenda.SQL.text :=
            'INSERT INTO ITENS_VENDA (COD_VEN, COD_PRO, ORDEM, DESCONTO,      '
            +
            'COD_EMP, QUANT, VALOR, VALOR_CUSTO, PRODUTO_PROMOCAO, CANCELADO, '
            +
            'VENDA_CANCELADA, COD_VEND)                                       '
            +
            'VALUES(:CODVEN, :CODPRO, :ORDEM, :DESCONTO, :CODEMP, :QUANT,     '
            + ':VALOR, :CUSTO, :PROMOCAO, :CANCELADO, :VENDACANCEL, :CODVEND)';

          IBSQLVenda.ParamByName('codven').AsInteger := strtoint(EdtCod.text);
          IBSQLVenda.ParamByName('codpro').AsInteger :=
            QItensPreVendaCOD_PRO.AsInteger;
          IBSQLVenda.ParamByName('ordem').AsInteger :=
            QItensPreVendaORDEM.AsInteger;
          IBSQLVenda.ParamByName('desconto').AsCurrency :=
            QItensPreVendaDESCONTO.AsCurrency;
          IBSQLVenda.ParamByName('codemp').AsInteger := iEmp;
          IBSQLVenda.ParamByName('quant').AsCurrency :=
            QItensPreVendaQUANT.AsCurrency;
          IBSQLVenda.ParamByName('valor').AsCurrency :=
            QItensPreVendaVALOR.AsCurrency;
          IBSQLVenda.ParamByName('custo').AsCurrency :=
            QItensPreVendaPRECO_CUSTO.AsCurrency;
          IBSQLVenda.ParamByName('promocao').AsString :=
            QItensPreVendaPRODUTO_PROMOCAO.AsString;
          IBSQLVenda.ParamByName('cancelado').AsInteger :=
            QItensPreVendaCANCELADO.AsInteger;
          IBSQLVenda.ParamByName('vendacancel').AsInteger := 0;
          IBSQLVenda.ParamByName('codvend').AsInteger := strtoint
            (EdtCodVend.text);
          IBSQLVenda.ExecOrOpen;

          IBTRVenda.Commit;
          result := 0;
        except
          IBTRVenda.Rollback;
          result := 1;
          AlertaCad('Erro ao Gravar o Item');
        end
      finally
        IBSQLVenda.Close;
      end;

      next;
    end;
  end;
  dm.IBTransaction.Commit;
  QItensPreVenda.Close;

  LimpaItens;
  BuscaItens;
  EdtCodPro.SetFocus;
end;

procedure TFrmVenda.AtualizaPreVenda;
begin
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE PRE_VENDA ' +
            'SET COD_VENDA = :CODVENDA, STATUS_PRE = :STATUS ' +
            'WHERE COD_PRE = :CODPRE');
        ParamByName('codvenda').AsInteger := strtoint(EdtCod.text);
        ParamByName('status').AsInteger := 1;
        ParamByName('codpre').AsInteger := iCodPreVenda;
        ExecOrOpen;
      end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      AlertaCad('Erro ao atualizar a Pre-Venda');
    end;
  finally
    dm.QConsulta.Close;
  end;
end;

procedure TFrmVenda.GeraParcelas(Sigla: String);
var
  i, iCodCobranca, iCodClassif: integer;
  cValorEntrada, cValorParcela, cDiferenca, cValorPromissoria: double;
  ParcelasN: integer;
begin
  iCodCobranca := dm.RetornaIntegerTabela('codigo_cobranca', 'parametros',
    'cod_emp', iEmp);
  iCodClassif := dm.RetornaIntegerTabela('codigo_classificacao', 'tipo_venda',
    'cod_tpv', strtoint(FrmVenda.EdtCodTPV.text));

  cValorPromissoria := StrToCurr( EdtTotalLiquido.Caption );
  cValorEntrada := 0;
  cValorParcela := 0;
  cDiferenca := 0;
  ParcelasN := 0;

  { EXCLUINDO PARCELAS }

  Parcelas.CreateDataSet;
  Parcelas.Open;
  Parcelas.EmptyDataSet;

  { BUSCA O TIPO DE VENDA }
  if dm.IBTRAux.Active then
    dm.IBTRAux.Commit;
  dm.IBTRAux.StartTransaction;
  with QTipoVenda do
  begin
    Close;
    ParamByName('codtpv').AsInteger := strtoint(FrmVenda.EdtCodTPV.text);
    Open;
  end;

  { VERIFICA SE TEM ENTRADA E GERA A MESMA }
  if trim(QTipoVendaPOSSUI_ENTRADA.AsString) = 'S' then
  begin
    cValorEntrada := (cValorPromissoria * QTipoVendaPERC_ENTRADA.AsCurrency)
      / 100;
    Parcelas.Insert;
    inc(ParcelasN);
    ParcelasNumero.Value := ParcelasN;
    ParcelasVenc.Value := date;
    ParcelasValor.Value := cValorEntrada;
    Parcelas.Post;
  end;
  { GERA PARCELAS }
  if QTipoVendaQTDPARCELAS_TPV.AsInteger = 0 then
  begin
    dm.IBTRAux.Commit;
    QTipoVenda.Close;
    exit;
  end;
  cValorParcela := (cValorPromissoria - cValorEntrada)
    / QTipoVendaQTDPARCELAS_TPV.AsInteger;
  cDiferenca := (cValorPromissoria - cValorEntrada) -
    (cValorParcela * QTipoVendaQTDPARCELAS_TPV.AsInteger);

  for i := 1 to QTipoVendaQTDPARCELAS_TPV.AsInteger do
  begin
    Parcelas.Insert;
    inc(ParcelasN);
    ParcelasNumero.Value := ParcelasN;

    if i = 1 then
      ParcelasVenc.Value := date + QTipoVendaDIASPRIPARC_TPV.AsInteger
    else
      ParcelasVenc.Value := date + QTipoVendaDIASPRIPARC_TPV.AsInteger +
        (QTipoVendaDIASENTREPARC_TPV.AsInteger * (i - 1));
    if i = 1 then
    begin
      if cDiferenca > 0 then
        ParcelasValor.Value := cValorParcela + cDiferenca
      else
        ParcelasValor.Value := cValorParcela;
    end
    else if i = QTipoVendaQTDPARCELAS_TPV.AsInteger then
    begin
      if cDiferenca < 0 then
        ParcelasValor.Value := cValorParcela + cDiferenca
      else
        ParcelasValor.Value := cValorParcela;
    end
    else
      ParcelasValor.Value := cValorParcela;
    Parcelas.Post;
  end;
  dm.IBTRAux.Commit;
  QTipoVenda.Close;

end;

end.


