@echo off
cls
title Criador de Scripts MetaTrader5 no VSCode
echo ^|******** Criador de Scripts MetaTrader5 no VSCode *********^|
echo ^|                                                           ^|
set /p "id=| Digite o nome do programa: "
set "file=%id%.mq5"
set /p "author=| Digite o nome do autor: "
set /p "link=| Digite o link do projeto: "
echo ^| Criando na pasta Scripts...                               ^|
cd C:\Users\gusta\AppData\Roaming\MetaQuotes\Terminal\D0E8209F77C8CF37AD8BF550E51FF075\MQL5\Scripts
(
echo //+------------------------------------------------------------------+
echo //+------------------------------------------------------------------+
echo //^| Nome do Arquivo: %file%
echo //^| Proprietário do Projeto: %author% 
echo //^| Link do Projeto %link%
echo //+------------------------------------------------------------------+
echo //      
echo //                           
echo //
echo #property copyright %author%
echo #property link      %link%%
echo #property version   "1.00"
echo //
echo //
echo //
echo //+------------------------------------------------------------------+
echo //^| Script program ^start function                                    ^|
echo //+------------------------------------------------------------------+
echo void OnStart^(^)
echo   ^{
echo //---
echo       Print^("Olá Mundo!"^);
echo   ^}
echo //+------------------------------------------------------------------+
) > %file%
echo ^|                                                           ^|
echo ^| Processo Finalizado com sucesso !!!                       ^|
echo ^| Abrindo VSCode ....                                       ^|   
echo ^|                                                           ^|
echo ***************************************************************
code %file%
