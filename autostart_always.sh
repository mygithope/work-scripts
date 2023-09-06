#!/bin/bash
# check if program or command is running ! if not (start it in the background)
run() {
  if ! pgrep $1; then
    $@ &
  fi
}
# do not forget "#!/bin/python"
run /home/matrix/./server.py
run /home/matrix/./test.py
