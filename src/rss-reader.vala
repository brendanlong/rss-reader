public class RSS.Reader : Gtk.ApplicationWindow {
    public Reader(Gtk.Application app) {
        Object(application: app);
        title = _("RSS Reader");
        set_default_size(800, 600);
        destroy.connect(Gtk.main_quit);
    }
}
