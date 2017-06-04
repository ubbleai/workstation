name 'workstation'
maintainer 'Michaël Journo'
maintainer_email 'gobadiah@gmail.com'
license 'all_rights'
description 'Installs/Configures workstation'
long_description 'Installs/Configures workstation'
version '0.1.0'

issues_url 'https://github.com/gobadiah/workstation/issues' \
        if respond_to?(:issues_url)

source_url 'https://github.com/gobadiah/workstation' if respond_to?(:source_url)

depends          'git'
depends          'zsh'
depends          'firefox'
depends          'homebrew'
depends          'virtualbox'
depends          'dmg'
depends          'vagrant', '~> 0.5.0'
depends          'bash'
depends          'nodejs'
depends          'mac_os_x'
