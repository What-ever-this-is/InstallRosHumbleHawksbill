#A shell file so I don't have to type out the commands.
notify-send "ROS2 installation started" "Installation Started"
sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
notify-send "Setting up sources completed." "Step Complete"
sudo apt update
sudo apt upgrade
sudo apt install ros-humble-desktop
notify-send "ROS2 Installed." "Step Complete"
source /opt/ros/humble/setup.bash
notify-send "Environment Varibles set up." "Step Complete"
notify-send "ROS2 has been completely installed. Try running the command 'ros2' in the terminal!" "Installation Complete."
