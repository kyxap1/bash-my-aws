#!/usr/bin/env bash

source load.sh

my_query='
  Reservations[].Instances[][
      InstanceId,
      KeyName,
      PrivateIpAddress,
      PublicIpAddress,
      InstanceType,
      State.Name,
      [Tags[?Key==`Name`].Value][0][0]
  ]
 '
instances ${inputs} --query ${my_query}

MYENV=${Alpha:$1}
#| grep -i Alpha | sort -k 7,9
#printf "%s\n" "${filecontent[@]}"
#while read id key ip extip state name; do echo "alias ${name// /}='slogin ubuntu@$ip -i $key.pem'"; done < <( ./list.sh | grep -i $MYENV  ) >> myalias
