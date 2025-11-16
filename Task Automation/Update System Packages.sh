## -- Update System Packages -- ##

# This script automates the process of updating the list of available
# packages and then upgrading all installed packages on Debian/Ubuntu systems.
# IT MUST BE RUN WITH ROOT PRIVILEGES (using 'sudo').

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root (or with sudo)."
   echo "Example: sudo ./package_update.sh"
   exit 1
fi

echo "=========================================="
echo "STEP 1: Updating local package index (apt update)"
echo "=========================================="

# 'apt update' fetches the latest list of package versions from repositories
apt update

if [ $? -eq 0 ]; then
    echo "Package index update successful."
else
    echo "Error during 'apt update'. Check your network connection and sources."
    exit 1
fi

echo ""
echo "=========================================="
echo "STEP 2: Upgrading installed packages (apt upgrade)"
echo "=========================================="

# 'apt upgrade -y' upgrades all installed packages to their newest version
# '-y' automatically confirms the installation prompts
apt upgrade -y

if [ $? -eq 0 ]; then
    echo "Package upgrade process complete."
else
    echo "Error during 'apt upgrade'."
fi

echo "=========================================="
echo "System update maintenance finished."
