#!/bin/bash
echo "Laporan file system" > report.txt
echo "===================" >>report.txt
echo "" >> report.txt
echo "tanggal : $(date)" >> report.txt
echo "" >> report.txt
echo "jumlah folder di direktori saat ini:" >> report.txt
ls -d */ 2>/dev/null | wc -l >> report.txt
echo "" >> report.txt
echo "ukuran total direktori (dalam KB):" >> report.txt
du -sh * 2>/dev/null >> report.txt
echo "" >> report.txt
echo "jumlah total baris dalam semua file teks di folder documents:" >> report.txt
find documents -type f -name "*.txt" -exec wc -l {} + 2>/dev/null >> report.txt
echo "" >> report.txt
echo "selesai membuat laporan!"

