#!/bin/sh

set -e -o pipefail

cd /home/eval

/shell2http -show-errors -include-stderr \
    /ps "ps aux" \
    /rootkit ./bin/Defense_Evasion_via_Rootkit.sh \
    /masquerading ./bin/Defense_Evasion_via_Masquerading.sh \
    /data_exfiltration ./bin/Exfiltration_via_Exfiltration_Over_Alternative_Protocol.sh

