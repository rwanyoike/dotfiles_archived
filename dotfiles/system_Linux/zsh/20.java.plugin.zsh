# Ref: https://github.com/swaywm/sway/issues/595
#      https://wiki.archlinux.org/index.php/Java_Runtime_Environment_fonts

export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd -Dswing.systemlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
