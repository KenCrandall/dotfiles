#!/usr/bin/env bash
#
# .bash_functions
#

function pwsafe-creds {
    echo -n "PasswordSafe Login: "
    read -s PASSWORDSAFE_USR
    export PASSWORDSAFE_USR=$PASSWORDSAFE_USR
    echo ""
    echo -n "PasswordSafe Password: "
    read -s PASSWORDSAFE_PSW
    export PASSWORDSAFE_PSW=$PASSWORDSAFE_PSW
    echo ""
}

function ipmi-creds {
    echo -n "IPMI Login: "
    read -s IPMI_USER
    export IPMI_USER=$IPMI_USER
    echo ""
    echo -n "IPMI Password: "
    read -s IPMI_PASS
    export IPMI_PASS=$IPMI_PASS
    echo ""
}
