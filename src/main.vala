const string GETTEXT_PACKAGE = "rssreader";

int main(string[] args) {
    Gtk.init(ref args);

    Intl.setlocale(LocaleCategory.MESSAGES, "");
    Intl.textdomain(GETTEXT_PACKAGE);
    Intl.bind_textdomain_codeset(GETTEXT_PACKAGE, "utf-8");
    Intl.bindtextdomain(GETTEXT_PACKAGE, "./locale");

    Gtk.Application app;
    try {
        app = new Gtk.Application("com.brendanlong.rss-reader",
            ApplicationFlags.FLAGS_NONE);
        app.register();
        if (app.is_remote) {
            app.activate();
            return 0;
        }
    } catch (Error e) {
        stderr.printf("Failed to start RSS Reader: %s\n", e.message);
        return 1;
    }
    var reader = new RSS.Reader(app);
    app.activate.connect(reader.present);
    reader.show_all();

    Gtk.main();
    return 0;
}
