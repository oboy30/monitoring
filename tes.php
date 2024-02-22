<?php
// Fungsi untuk melakukan ping ke alamat tertentu
function ping($host) {
    $output = null;
    $result = null;
    exec("ping -c 4 $host", $output, $result);

    if ($result == 0) {
        // Menemukan baris yang mengandung rata-rata latency
        foreach ($output as $line) {
            if (strpos($line, 'avg') !== false) {
                $latencyArray = explode('/', $line);
                echo $latencyArray[4] . " ms"; // Mengambil nilai rata-rata latency
                return;
            }
        }
    } else {
        echo "Host tidak dapat dijangkau"; // Jika ping gagal
    }
}

// Alamat yang ingin di-ping (ganti dengan alamat yang sesuai)
$targetHost = "8.8.8.8";

// Mendapatkan hasil ping
ping($targetHost);
?>
