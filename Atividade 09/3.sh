#!/bin/bash

read -p "por favor insira o valor desejado: " num

if (echo $num | grep -E '^R\$ ([0-9]{1,3}(\.[0-9]{3})*|[0-9]+)(\,[0-9]{2})?$'); then
    echo 'está no padrão'
else
    echo 'não está no Padrão'
fi