# BASH Config Files

Run `install.sh` from this directory to install the default dotfile set for the BASH shell. 

>  **NOTE:** Files are named with prefixes to indicate status

## Prefixes

| Prefix      | Meaning                   | Notes                                                        |
| ----------- | ------------------------- | ------------------------------------------------------------ |
| `.broken`   | Broken                    | Not working                                                  |
| `.disabled` | Disabled                  | Disabled files that are not to be copied                     |
| `.dot`      | Active File               | Valid, active files that get copied to`$HOME` by `install.sh` |
| `.remote`   | Intended for Remote Hosts | Currently need to be manually installed.  In the future, either an Ansible playbook or `remote_install.sh` will be provided |
| `.unused`   | Unused                    | Files. functions, and snippets that may be useful in the future |

