## -- Server Diagnostic Information -- ##

# This script gathers critical system and network information
# used for basic server diagnostics and health checks.

echo "=========================================="
echo "        1. NETWORK INTERFACE INFO (ip a)"
echo "=========================================="
# 'ip a' (or 'ip address show') displays network interfaces and IP addresses
ip a

echo ""
echo "=========================================="
echo "        2. MEMORY AND SWAP USAGE (free -h)"
echo "=========================================="
# 'free -h' shows used/available physical memory and swap memory in human-readable format
free -h

echo ""
echo "=========================================="
echo "        3. CPU AND I/O STATS (iostat)"
echo "=========================================="
# 'iostat -k': reports CPU utilization and disk I/O statistics.
# NOTE: The 'iostat' command is part of the 'sysstat' package.
# If it fails, you may need to install it: 'sudo apt install sysstat'
if command -v iostat &> /dev/null
then
    iostat -k
else
    echo "iostat command not found. Please install the 'sysstat' package if needed."
    echo "(e.g., sudo apt install sysstat on Debian/Ubuntu)"
fi

echo ""
echo "=========================================="
# A simple way to check running processes (alternative to 'htop')
echo "        4. TOP 5 CPU CONSUMING PROCESSES"
echo "=========================================="
ps aux --sort=-%cpu | head -n 6
