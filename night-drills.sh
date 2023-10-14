#!/bin/bash

# 1. Masuk ke root dengan sudo -i
echo "1. Masuk ke root dengan sudo -i"
sudo -i

# 2. Masuk dengan password "student"
echo "2. Masuk dengan password 'student'"
echo "student" | su -c "echo 'Anda sekarang masuk sebagai root'"

# 3. Jalankan command tail -n 6 /etc/group
echo "3. Menampilkan 6 baris terakhir dari /etc/group"
tail -n 6 /etc/group

# 4. Jalankan command tail -n 5 /etc/passwd
echo "4. Menampilkan 5 baris terakhir dari /etc/passwd"
tail -n 5 /etc/passwd

# 5. Masuk ke direktori cd ~/mentor
echo "5. Masuk ke direktori ~/mentor"
cd ~/mentor

# 6. Jalankan command ls -ld mentee
echo "6. Menampilkan informasi direktori 'mentee'"
ls -ld mentee

# 7. Masuk kedalam su - yourname
echo "7. Masuk ke akun 'yourname'"
su - yourname

# 8. Masuk kedalam su - yourname dengan password hybrid2023
echo "8. Masuk ke akun 'yourname' dengan password 'hybrid2023'"
echo "hybrid2023" | su - yourname -c "echo 'Anda sekarang masuk sebagai yourname' || (echo 'Gagal masuk ke yourname'; passwd)"

# 9. Jalankan command ls -ld
echo "9. Menampilkan informasi akun 'yourname'"
ls -ld

# 10. Exit dari akun 'yourname'
echo "10. Keluar dari akun 'yourname'"
exit

# 11. Menampilkan nilai UMASK dari /etc/login.defs
echo "11. Nilai UMASK dari /etc/login.defs"
cat /etc/login.defs | grep UMASK

# 12. Menampilkan nilai PASS_MAX_DAYS dari /etc/login.defs
echo "12. Nilai PASS_MAX_DAYS dari /etc/login.defs"
cat /etc/login.defs | grep PASS_MAX_DAYS

# 13. Menampilkan konfigurasi sudo dari /etc/sudoers
echo "13. Menampilkan konfigurasi sudo dari /etc/sudoers"
cat /etc/sudoers | grep HCAI || cat /etc/sudoers.d/HCAI

# 15. Menampilkan konfigurasi PasswordAuthentication dari /etc/ssh/sshd_config
echo "15. Menampilkan konfigurasi PasswordAuthentication dari /etc/ssh/sshd_config"
cat /etc/ssh/sshd_config | grep PasswordAuthentication
