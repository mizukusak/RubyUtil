# coding: Shift_JIS

require 'optparse'

def getTargets
  option={}
  OptionParser.new do |opt|
    opt.on('-a', '--ap',         'ap server')         {|v| option[:ap] = v}
    opt.parse!(ARGV)
  end

  list=[
    {ip: "10.147.212.6", pass: "vaCGe18b", name: "���ފǗ�"},
    {ip: "10.147.212.10", pass: "51lZbvTz", name: "��"},
    {ip: "10.147.212.14", pass: "drKf4Sv9", name: "�w��"},
    {ip: "10.147.212.18", pass: "Ie81oPdp", name: "�ޗ��x��"},
    {ip: "10.147.212.21", pass: "1pM6iKtd", name: "�ԕi"},
    {ip: "10.147.212.25", pass: "hWArg76m", name: "���"},
    {ip: "10.147.212.29", pass: "wcyk8KN1", name: "����"},
    {ip: "10.147.212.33", pass: "bILvco50", name: "�o��"},
    {ip: "10.147.212.37", pass: "dg10bERj", name: "���ъǗ�VW"},
    {ip: "10.147.212.42", pass: "MI7fk3ut", name: "���ъǗ�VX"},
#    ip: "", pass: "", name: ""
#    ip: "", pass: "", name: ""
    {ip: "10.147.212.45", pass: "fv82scEK", name: "�A�o�Ǘ�"},
    {ip: "10.147.212.49", pass: "2da9qYWv", name: "�A���Ǘ�"},
    {ip: "10.147.212.53", pass: "vn9wsML4", name: "���ъǗ�"},
    {ip: "10.147.212.56", pass: "Rr49ovtR", name: "���ъǗ����̑�"},
    # {ip: "10.147.212.59", pass: "nb5DS9fz", name: "�I��"},
#    ip: "", pass: "", name: ""
  ]
  if !option[:ap].nil?
    list = [
      {ip: "10.147.212.5", pass: "vaCGe18b", name: "���ފǗ�"},
      {ip: "10.147.212.9", pass: "51lZbvTz", name: "��"},
      {ip: "10.147.212.13", pass: "drKf4Sv9", name: "�w��"},
      {ip: "10.147.212.17", pass: "Ie81oPdp", name: "�ޗ��x��"},
      {ip: "10.147.212.20", pass: "1pM6iKtd", name: "�ԕi"},
      {ip: "10.147.212.24", pass: "hWArg76m", name: "���"},
      {ip: "10.147.212.28", pass: "wcyk8KN1", name: "����"},
      {ip: "10.147.212.32", pass: "bILvco50", name: "�o��"},
      {ip: "10.147.212.36", pass: "dg10bERj", name: "���ъǗ�VW"},
      {ip: "10.147.212.39", pass: "MI7fk3ut", name: "���ъǗ�VX"},
      # {ip: "10.147.212.40", pass: "MI7fk3ut", name: "���ъǗ�VX-RM"},
      # {ip: "10.147.212.41", pass: "MI7fk3ut", name: "���ъǗ�VX-ILF"},
      {ip: "10.147.212.44", pass: "fv82scEK", name: "�A�o�Ǘ�"},
      {ip: "10.147.212.48", pass: "2da9qYWv", name: "�A���Ǘ�"},
      {ip: "10.147.212.52", pass: "vn9wsML4", name: "���ъǗ�"},
      {ip: "10.147.212.55", pass: "Rr49ovtR", name: "���ъǗ����̑�"},
      {ip: "10.147.212.58", pass: "nb5DS9fz", name: "�I��"},
      # {ip: "10.147.212.64", pass: "nb5DS9fz", name: "�ڍsAGRA"},
      # {ip: "10.147.212.66", pass: "nb5DS9fz", name: "�A�g"},
  #    ip: "", name: ""
    ]
  end
  return list
end

