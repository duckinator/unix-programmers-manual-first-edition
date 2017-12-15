#!/bin/bash

find txt-files/ -type f -exec cat '{}' ';' | grep -vE '^ +[0-9]+'
