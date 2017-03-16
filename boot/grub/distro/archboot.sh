set icon="archlinux"
set vmlinuz_img="(loop)/boot/vmlinuz_*";
set initrd_img="(loop)/boot/initramfs_*.img";
set imgdevpath="/dev/disk/by-uuid/$devuuid";
set kcmdline=" ";
set loopiso="iso_loop_dev=$imgdevpath iso_loop_path=$isofile";
menuentry "作为 Archboot ISO 启动" --class $icon{
	linux $vmlinuz_img $kcmdline $loopiso;
	initrd $initrd_img;
}