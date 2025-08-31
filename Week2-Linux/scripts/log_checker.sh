#!/bin/bash

<<INFO
THIS SCRIPT IS TO FIND ERROR AND WARNING LOGS - CREATED BY GS
INFO

read -p "ENTER THE FILE PATH TO CHECK LOGS: " file

grep -in error $file   #n is for printing line number 
grep -in warning $file



