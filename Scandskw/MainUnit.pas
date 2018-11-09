unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure OK_Close(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
Title: string;
Author: string;
DescLabel: TLabel;
AuthorLabel: TLabel;
OKButton: TButton;
w: Integer;
offset: Integer;
begin
Author := 'Cirno Baka';
Title := 'Scandskfw';
MainForm.Caption := Title;
DescLabel := TLabel.Create(Self);
DescLabel.Caption:=format('Изначально тут был %S, но в виртуальной машине это не нужно',[Title]);
DescLabel.Parent:=MainForm;
AuthorLabel := TLabel.Create(Self);
AuthorLabel.Caption:=format('Автор фикса: %S',[Author]);
AuthorLabel.Parent:=MainForm;
AuthorLabel.Top:=200;
OKButton:=TButton.Create(Self);
OKButton.Caption:='Ясно.';
OKButton.Top:=230;
OKButton.Left:=30;
OKButton.Parent:=MainForm;
MainForm.AutoSize:=true;
w:=MainForm.Width;
offset:=10;
MainForm.AutoSize:=false;
MainForm.Width:=w+offset;
DescLabel.Top:=trunc(offset/2);
DescLabel.Left:=DescLabel.Left+trunc(offset/2);
AuthorLabel.Left:=AuthorLabel.Left+trunc(offset/2);
OKButton.Left:=trunc((MainForm.Width-OKButton.Width)/2);
OKButton.OnClick:=OK_Close;
end;

procedure TMainForm.OK_Close(Sender: TOBject);
begin
MainForm.Close();
end;

end.
