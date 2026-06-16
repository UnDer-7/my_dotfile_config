dkkk() {
    echo "⚠️  Isso vai parar todos os containers, removê-los e apagar todos os volumes."
    read "reply?Tem certeza que deseja continuar? (y/N) "
    if [[ "$reply" == "y" || "$reply" == "Y" ]]; then
        docker stop $(docker ps -q) && docker rm $(docker ps -a -q) && docker volume rm $(docker volume ls -q) && docker ps -a && docker volume ls
    else
        echo "Operação cancelada."
    fi
}
