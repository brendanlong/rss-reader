public class RSS.Reader : Gtk.ApplicationWindow {
    public Reader() {
        title = _("RSS Reader");
        destroy.connect(Gtk.main_quit);
    }
}
