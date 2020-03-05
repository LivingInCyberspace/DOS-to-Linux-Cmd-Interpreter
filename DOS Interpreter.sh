#!/bin/bash

running=true

while [ $running = true ]
do
	echo -n "jinel> "
	read command arg1 arg2

	case ${command^^} in
		CHDIR)
                        cd $arg1
                        ;;

                CLS)
                        clear
                        ;;

                COPY)
                        mkdir $arg1
                        ;;

                CREATEDIR)
                        mkdir $arg1
                        ;;

                CREATEFILE)
                        touch $arg1
                        ;;

                DELETE)
                        rm $arg1
                        ;;

                DIR)
                        ls $arg1
                        ;;

                MOVE)
			mv $arg1 $arg2
                        ;;

                PRINT)
                        echo "$arg1"
                        ;;

                QUIT)
                       running=false
                        ;;

                RENAME)
			mv $arg1 $arg2
                        ;;

                TYPE)
                        cat $arg1
                        ;;
          
		*)
			echo Command Not Found!
			;;

	esac
done
