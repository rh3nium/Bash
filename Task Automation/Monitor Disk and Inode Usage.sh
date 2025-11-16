## -- Disk and Inode Usage Monitor -- ##

# This script displays current disk usage and inode usage
# across all mounted filesystems.

echo "======================================="
echo "        1. DISK USAGE (df -h)"
echo "---------------------------------------"

# 'df -h': shows disk space usage in human-readable format (e.g., GB, MB)
df -h

echo ""
echo "======================================="
echo "        2. INODE USAGE (df -i)"
echo "---------------------------------------"

# 'df -i': shows inode usage (inodes are data structures that store info
# about files, and running out of them can halt system functionality)
df -i

echo "======================================="
echo "Note: Full disks can impact performance; full inodes prevent file creation."
