## Adding and Removing Users:

To add a new user:

```bash
docker exec -it squid htpasswd -b /etc/squid/passwd new_username new_password
```

To remove a user:

```bash
docker exec -it squid htpasswd -D /etc/squid/passwd username_to_remove
```
