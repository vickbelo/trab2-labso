#!/bin/bash
  echo "Trabalho 2. Aluna: Victoria C. Belo de Souza"
  echo
Menu(){
  echo "-----------------------------------------------------"
  echo "********************* MENU **************************"
  echo "-----------------------------------------------------"
  echo "[1] Listar conteúdo da pasta atual "
  echo "[2] Ver conteúdo de um arquivo"
  echo "[3] Testar se uma máquina IP/NOME está no ar"
  echo "[0] Sair"
  echo
  echo -n "Escolha uma opção:"
   read num_opc
  case $num_opc in
    0) Sair ;;
    1) Listar ;;
    2) Visualizar ;;
    3) IP_URL ;;
    *) "Opcão desconhecida, tente novamente." ; echo ; Menu ;;
 esac
}

    Listar () {
        echo
        echo "Você escolheu opção [$num_opc]"
        ls
        echo
Menu
}
   Sair () {
     echo
     echo "Você escolheu opção [$num_opc] Encerrando, aguarde. . ."
     exit 0;
}

    Visualizar () {
      echo
      echo -n "Você escolheu opção [$num_opc] Informe o nome do arquivo e o formato (.txt, .c, .sh):"
      read arq_nome
         if [ -f $arq_nome ]
         then
           echo "Arquivo $arq_nome existe!"
           cat $arq_nome
         else
           echo "Arquivo $arq_nome inexistente! Por favor, tente novamente"
           echo
         fi
           Menu
}
     IP_URL (){
     echo -n "Informe IP ou URL e aguarde alguns instantes:"
     read IPURL_num
      ping -c 3 $IPURL_num
        if [ $? -eq 0  ]
        then
          echo "--------------------------------------------------------------------"
          echo "**************O IP/URL ( $IPURL_num ) informado está no ar!**********"
          echo "--------------------------------------------------------------------"
       else
         echo "---------------------------------------------------------------------"
         echo "***********O IP/URL ( $IPURL_num ) informado está fora do ar!********"
         echo "---------------------------------------------------------------------"
       fi
      echo 
     Menu
}
Menu

