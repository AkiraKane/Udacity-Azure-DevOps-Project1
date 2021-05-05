#! /bin/bash


az policy definition create \
    --name 'tagging-policy' \
    --display-name 'Allowed Tags' \
    --description 'This policy ensures all indexed resources in your subscription have tags and deny deployment if they do not.' \
    --rules 'tagging-policy.json' \
    --mode Indexed \
    --subscription "Azure subscription 1"

az policy assignment create \
    --name 'tagging-policy' \
    --policy 'tagging-policy'