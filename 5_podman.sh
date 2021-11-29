# https://dev.to/bowmanjd/using-podman-on-windows-subsystem-for-linux-wsl-58ji

sudo dnf -y install podman

echo 'if [[ -z "$XDG_RUNTIME_DIR" ]]; then
  export XDG_RUNTIME_DIR=/run/user/$UID
  if [[ ! -d "$XDG_RUNTIME_DIR" ]]; then
    export XDG_RUNTIME_DIR=/tmp/$USER-runtime
    if [[ ! -d "$XDG_RUNTIME_DIR" ]]; then
      mkdir -m 0700 "$XDG_RUNTIME_DIR"
    fi
  fi
fi' >> ~/.bashrc


sudo cp /usr/share/containers/containers.conf /etc/containers/containers.conf
sudo sed -i '/cgroup_manager/c\cgroup_manager = "cgroupfs"'  /etc/containers/containers.conf 
sudo sed -i '/c^events_logger/c\cevents_logger = "file"'  /etc/containers/containers.conf 
sudo dnf reinstall -y shadow-utils