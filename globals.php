<?php 
function get_dirs($path = '.') {
    $dirs = array();
    $folders = new DirectoryIterator($path);
    foreach ($folders as $file) {
        if ($file->isDir() && !$file->isDot()) {
            $dirs[] = $file->getFilename();
        }
    }

    return $dirs;
}
function initialize_plugins(){
	$plugins_folder = "plugins/";
	$initialize_dir[] = get_dirs($plugins_folder);
	$plugins[] = $initialize_dir;
	return $plugins;
}
?>