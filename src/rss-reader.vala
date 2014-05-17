public class RSS.Reader : Gtk.ApplicationWindow {
    public Reader(Gtk.Application app) {
        Object(application: app);
        title = _("RSS Reader");
        set_default_size(800, 600);

        var header = new Gtk.HeaderBar();
        header.title = title;
        header.show_close_button = true;
        set_titlebar(header);

        var container = new Gtk.Grid();
        var feed_list = new FeedList();
        container.attach(feed_list, 0, 0, 1, 1);
        var content = new ContentView();
        var scrolled_window = new Gtk.ScrolledWindow (null, null);
        scrolled_window.set_policy (Gtk.PolicyType.AUTOMATIC,
            Gtk.PolicyType.AUTOMATIC);
        scrolled_window.add (content);
        container.attach(scrolled_window, 1, 0, 1, 1);
        add(container);

        destroy.connect(Gtk.main_quit);
    }
}
