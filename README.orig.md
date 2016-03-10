Forked from https://github.com/realestate-com-au/bash-my-aws

#### Aliases file generation

```ShellSession
<<<<<<< HEAD
$ while read id key ip extip type state name
	do
		name=${name/ - /-}
		name=${name/ /-}
		echo "alias ${name/ /-}='slogin ubuntu@$ip -i ~/.ssh/$key.pem'"
	done < <( list-aws ) | sort > ~/aliases.gen
=======
$ while read id key ip extip type state name; do name=${name/ - /-}; name=${name/ /-}; \
echo "alias ${name/ /-}='slogin ubuntu@$ip -i ~/.ssh/$key.pem'"; done < <( list-aws ) \
| sort > ~/aliases.gen
>>>>>>> 8cdd49eda4cd957566c672281869d0f1995ae87e
```

#### Remote command execution in parallel on specified hosts

```ShellSession
$ list-aws | grep Alpha | grep -E 'order|shift|track' | awk '{print $3}' | while read i; do \
echo "slogin -o 'StrictHostKeyChecking=no' -i ~/.ssh/ ubuntu@$i 'sudo /etc/init.d/wildfly restart'"; \
done | xargs -P0 -I{} bash -c "{}"
```

![Original README.md](./README.dist.md)
