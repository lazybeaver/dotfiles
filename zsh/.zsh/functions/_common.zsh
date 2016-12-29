function check_usage() {
  if [ "${#}" -ne 2 ];
  then
    echo "Usage: ${1} [workspace]"
    return 1
  fi
  if [ -d "${2}" ];
  then
    echo "Error: ${2} already exists"
    return 1
  fi
  return 0
}

function write_tmuxp_yaml() {
  cat >> "${1}/.tmuxp.yaml" << EOF
  session_name: "${2}"
  windows:
    - window_name: "(home)"
      panes:
        - blank
    - window_name: "src"
      layout: main-horizontal
      options:
        main-pane-height: 35
      panes:
        - shell_command:
          - vim -c ":NERDTree"
          focus: true
        - shell_command:
          - ls
    - window_name: "manual"
      panes:
        - blank
EOF
}

