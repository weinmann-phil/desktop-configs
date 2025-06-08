# Configuration of the Home Environment

## Overview

A great part of setting up a computer is customizing the Home environment.
In order to facilitate this process, this role is set out to perform some tasks
to customize screen and terminal options.

Furthermore, this role sets out to establish a standardized folder structure 
for several options.

## Project Structure

This project consists of the following folders:

```bash
❯ tree $(pwd)/roles/home_configuration
./roles/home_configuration
├── defaults
│   └── main.yml
├── files
│   └── stars-wallpaper.png
├── handlers
│   └── main.yml
├── meta
│   └── main.yml
├── README.md
├── tasks
│   ├── configure_display_settings.yml
│   ├── configure_gnome_terminal.yml
│   ├── folder_structure.yml
│   └── main.yml
├── templates
├── tests
│   ├── inventory
│   └── test.yml
└── vars
    └── main.yml

9 directories, 12 files
```

## Folder Structure

Currently, the role focuses on adding options to the base of a user's home, the 
`.config`, and the `Documents` folder.

* `.config`
  ```bash
  tbd tree output `.config`
  ```
* `Documents`
  ```bash
  ❯ tree ~/Documents -L 1
  /home/mnv1c/Documents
  ├── ac
  ├── fin
  └── tech

  3 directories, 0 files
  ```
* `/home/{{ user }}`
  ```bash
  ❯ tree ~/ -L 1
  /home/mnv1c/
  ├── Desktop
  ├── Documents
  ├── Downloads
  ├── git
  ├── Music
  ├── Pictures
  ├── Public
  ├── Templates
  └── Videos

  9 directories, 0 files
  ```

## Requirements

There no particular requirements for this role.

## Role Variables

| Variable | Description                                            |
|----------|--------------------------------------------------------|
| user     | (Required) Sets the name of the configured system user |

## Dependencies

There are no dependencies for this role.

## Example Playbook

Basic implementation of the role:

```yaml
- hosts: "{{ target_system }}"
  tasks:

  - name: System User
    ansible.builtin.command: whoami
    register: system_user
    
  - name: Configure Home Environment
    include_role: home_configuration
    vars:
      user: "{{ system_user }}"
```

## License

This role inherits the project's MIT license. 
For further information, please contact me.

## Author Information

Philip Weinmann

## References

tbd
