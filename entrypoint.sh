#!/bin/sh

set -e -o pipefail

cd /home/eval

# Mark as CS testcontainer
sh -c echo CS_testcontainer starting

/shell2http -show-errors -include-stderr \
    /ps "ps aux" \
    /rootkit ./bin/Defense_Evasion_via_Rootkit.sh \
    /masquerading ./bin/Defense_Evasion_via_Masquerading.sh \
    /data_exfiltration ./bin/Exfiltration_via_Exfiltration_Over_Alternative_Protocol.sh \
    /deploy_malware ./bin/Malware_Linux_Trojan.sh \
    /reverse_shell ./bin/Command_Control_via_Remote_Access.sh \
    /reverse_shell-obfuscated ./bin/Command_Control_via_Remote_Access-obfuscated.sh \
    /credentials_dumping ./bin/Credential_Access_via_Credential_Dumping.sh \
    /credentials_dumping2 ./bin/Collection_via_Automated_Collection.sh \
    /suspicious_commands ./bin/Execution_via_Command-Line_Interface.sh
