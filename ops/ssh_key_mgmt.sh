#!/bin/bash

function move_current_key () 
{
    # Name for the key extracted from the metadata
    keyname=$(cat ~/.ssh/id_rsa.pub| awk '{print $3}' | tr  '@' ' ' | awk '{print $1}')
    # TODO: validate if keyname is empty string and assigned a default
    echo $keyname
    
    # Create a dir for teh current key
    dirname=${keyname}_$(date +%F_%H%M%S)
    mkdir -p ~/.ssh/${dirname}; 
    # move the current key
    mv ~/.ssh/id_rsa* ~/.ssh/${dirname} 

}

#move_current_key

function restore_last_key () 
{
    # TODO: Restore the key
}
