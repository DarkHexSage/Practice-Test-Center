<?php
// Define the paths to the files
$file7zPath = '/challenge/bigfile.txt.7z';
$fileXzPath = '/challenge/bigfile.txt.xz';

// Retrieve the MD5 checksums of the files using md5sum command and cut to extract only the checksum part
$md5sum7z = trim(shell_exec("md5sum $file7zPath | cut -d' ' -f1"));
$md5sumXz = trim(shell_exec("md5sum $fileXzPath | cut -d' ' -f1"));

// Define the expected MD5 checksums
$expectedMd5sum7z = '3c7188914363d67f331e157cd13f2b5a';
$expectedMd5sumXz = '2d35a43c3a666af5bffb0b6942389833';

// Check if at least one of the files has a valid MD5 checksum
if (
    $md5sum7z === $expectedMd5sum7z ||
    $md5sumXz === $expectedMd5sumXz
) {
    echo 'success';
} else {
    echo 'failure';
}
?>
