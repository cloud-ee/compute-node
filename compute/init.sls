hp-ManagementComponentPack-key:
  cmd.run:
    - name: wget -O - http://downloads.linux.hp.com/SDR/repo/mcp/GPG-KEY-mcp | apt-key add -

HP-ManagementComponentPack-repository:
  pkgrepo.managed:
    - humanname: HP ManagementComponentPack repository
    - name: deb http://downloads.linux.hp.com/SDR/downloads/ManagementComponentPack precise/current non-free
    - require:
      - cmd: hp-ManagementComponentPack-key

hpacucli:
  pkg.latest:
    - name: hpacucli
    - require:
      - pkgrepo: HP-ManagementComponentPack-repository

