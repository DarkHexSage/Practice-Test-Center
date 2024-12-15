<?php
// Define the file path where flag1 is stored
$filePath = '/challenge/flag1.txt';

// Compute the MD5 checksum of flag1
$md5Checksum = trim(shell_exec("md5sum $filePath | cut -d ' ' -f1"));

// Compare the computed MD5 checksum with the expected value
if ($md5Checksum === 'd02b270320a56ab0001812f158399b2e') { // Adjust with the correct MD5 checksum
    echo 'success';
} else {
    echo 'failure';
}
?>
