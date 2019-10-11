{------------------------------------------------------------------------------}
{                                                                              }
{  Personal Knowledge Base Designer                                            }
{  by A.Yu. Yurin                                             }
{                                                                              }
{  iskander@icc.ru                                                             }
{  http://knowledge-core.ru/                                                   }
{                                                                              }
{------------------------------------------------------------------------------}

unit LevUnit;

interface
//function from
// https://ru.wikibooks.org/wiki/%D0%A0%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8_%D0%B0%D0%BB%D0%B3%D0%BE%D1%80%D0%B8%D1%82%D0%BC%D0%BE%D0%B2/%D0%A0%D0%B0%D1%81%D1%81%D1%82%D0%BE%D1%8F%D0%BD%D0%B8%D0%B5_%D0%9B%D0%B5%D0%B2%D0%B5%D0%BD%D1%88%D1%82%D0%B5%D0%B9%D0%BD%D0%B0#Delphi

const
  cuthalf = 100; // ���������, �������������� ����. �����
  // �������������� �����

var
  buf: array[0..((cuthalf * 2) - 1)] of integer; // ������� �����, ��������
  // �������, ��������������
  // � ��������

  function LeveDist(s, t: string): integer;


implementation
 function min3(a, b, c: integer): integer; // ��������������� �������
begin
  Result := a;
  if b < Result then
    Result := b;
  if c < Result then
    Result := c;
end;

// ���������� ������� � �������� ������������� �������� � ����� ���������:
// ������� �� �������� �������� ����������� �������, ����� ��������
// ����� ��������� ������������ ����� �����
// ��� ������� ��� 1) �������� ������ � �� ��������� � �����������������
// 2) ��������� �������������� (� ���� ������� ��������
// � ����������� onfilterRecord)
// ����� �������, � ���������� ���������� ������ ������������ ������
// ��� ��������� ������ �������, ������� �������� ������� ������
// �������� �������� ����� (�� i)... ��� ����������� ����, ����� �� �������
// ������ �������� "������ �������", ������ ���������� flip
// �. �. ��� flip = false ������ �������� ������ �������� �������������
// �������, � ������ - ���������; ��� flip = true ��������,
// ������ �������� - ��������� ������, ������ �������� - �������������

function LeveDist(s, t: string): integer;
var
  i, j, m, n: integer;
  cost: integer;
  flip: boolean;
begin
  s := copy(s, 1, cuthalf - 1);
  t := copy(t, 1, cuthalf - 1);
  m := length(s);
  n := length(t);
  if m = 0 then
    Result := n
  else if n = 0 then
    Result := m
  else
  begin
    flip := false;
    for i := 0 to n do
      buf[i] := i;
    for i := 1 to m do
    begin
      if flip then
        buf[0] := i
      else
        buf[cuthalf] := i;
      for j := 1 to n do
      begin
        if s[i] = t[j] then
          cost := 0
        else
          cost := 1;
        if flip then
          buf[j] := min3((buf[cuthalf + j] + 1),
            (buf[j - 1] + 1),
            (buf[cuthalf + j - 1] + cost))
        else
          buf[cuthalf + j] := min3((buf[j] + 1),
            (buf[cuthalf + j - 1] + 1),
            (buf[j - 1] + cost));
      end;
      flip := not flip;
    end;
    if flip then
      Result := buf[cuthalf + n]
    else
      Result := buf[n];
  end;
end;
end.