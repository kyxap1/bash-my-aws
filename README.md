Forked https://github.com/realestate-com-au/bash-my-aws
=====

### Usage

## Aliases file generation

```ShellSession
$ while read id key ip extip type state name
	do
		name=${name/ - /-}
		name=${name/ /-}
		echo "alias ${name/ /-}='slogin ubuntu@$ip -i ~/.ssh/$key.pem'"
	done < <( list-aws ) | sort > ~/aliases.gen
```

## Remote command execution in parallel on specified hosts

```ShellSession
$ list-aws | grep Alpha | grep -E 'order|shift|track' | awk '{print $3}' | while read i; do echo "slogin -o 'StrictHostKeyChecking=no' -i ~/.ssh/nekloteam.pem ubuntu@$i 'sudo /etc/init.d/wildfly restart'"; done | xargs -P0 -I{} bash -c "{}"
```

!(./README.dist.md)
