#!/usr/bin/perl -pi

s|^(<HTML lang="zh)">|$1-TW">|;
s/(\.zh)(?=\.(?:gif|jpg|png))/$1-tw/g;
s|^<A href=".*">(中文&nbsp;\(Big5\))</A>(?=&nbsp;)|$1|;

s/操作系統/作業系統/g;
s/服務器/伺服器/g;
s/源代碼/原始碼/g;
s/郵遞列表/通信論壇/g;
s/鏡像站/映射站/g;
s/克羅地亞/克羅埃西亞/g;
s/網絡對象模型環境/網絡物件模型環境/g;
s/軟盤/軟碟/g;
s/硬盤/硬碟/g;
s/急救盤/急救磁碟/g;
s/引導盤/起動磁碟/g;
while (s/^((?:[\x00-\x7f]|[\x80-\xff].)+)“/$1「/) {}
while (s/^((?:[\x00-\x7f]|[\x80-\xff].)+)”/$1」/) {}
while (s/^((?:[\x00-\x7f]|[\x80-\xff].)+(軟|硬))件/$1體/) {}
while (s/^((?:[\x00-\x7f]|[\x80-\xff].)+(軟|硬|光))盤/$1碟/) {}
while (s/^((?:[\x00-\x7f]|[\x80-\xff].)+)兼容/$1相容/) {}

# s/^((?:[\x00-\x7f]|[\x80-\xff].)+)程序/$1程式/g;
