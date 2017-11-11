program hybrid;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {Form1},
  SG.ScriptGate in 'dependencies\scriptgate\SG.ScriptGate.pas',
  SG.ScriptGate.Win in 'dependencies\scriptgate\SG.ScriptGate.Win.pas',
  SG.ScriptGateLog in 'dependencies\scriptgate\SG.ScriptGateLog.pas',
  SG.WebBrowserHelper in 'dependencies\scriptgate\SG.WebBrowserHelper.pas',
  Androidapi.JNI.SGWebClient in 'dependencies\scriptgate\Androidapi.JNI.SGWebClient.pas',
  SG.ScriptGate.Android in 'dependencies\scriptgate\SG.ScriptGate.Android.pas',
  SG.ScriptGate.Android.SGWebClientBridge in 'dependencies\scriptgate\SG.ScriptGate.Android.SGWebClientBridge.pas',
  SG.ScriptGate.iOS in 'dependencies\scriptgate\SG.ScriptGate.iOS.pas',
  SG.ScriptGate.Mac in 'dependencies\scriptgate\SG.ScriptGate.Mac.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
