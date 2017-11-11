unit fMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.Controls.Presentation, FMX.StdCtrls, System.IOUtils, SG.ScriptGate;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
  private
    FGate: TScriptGate;
  public
    procedure OpenFile;
    procedure SaveFile(Content: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  WebBrowser1.URL := ExtractFilePath(ParamStr(0)) + 'app.html';
  FGate := TScriptGate.Create(Self,WebBrowser1,'delphi');
  WebBrowser1.Navigate;
end;

procedure TForm1.OpenFile;
var Content: string;
begin
 if OpenDialog1.Execute then
    Content := TFile.ReadAllText(OpenDialog1.FileName);
 FGate.CallScript('document.getElementById("txtx").innerText = "' + Content + '";' ,nil);
end;

procedure TForm1.SaveFile(Content: string);
begin
 if SaveDialog1.Execute then
   TFile.WriteAllText(SaveDialog1.FileName,Content);
end;

end.
