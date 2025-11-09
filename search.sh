#!/bin/bash
#script untuk memindahkan file ke folder berdasarkan eksistensi
echo "Memindahkan file sesuai eksistensi"
find . -maxdepth 1 -type f -name "*.txt" -print  -exec mv {} documents/ \;
find . -maxdepth 1 -type f \( -name "*.jpg" -o -name "*.png" \) -print  -exec mv {} images/ \;
find . -maxdepth 1 -type f \( -name "*.zip" -o -name "*.tar" \) -print  -exec mv {} archives/ \;
find . -maxdepth 1 -type f -name "*.log" -print  -exec mv {} logs/ \;
echo "Selesai memindahkan file!"

