const string GETTEXT_PACKAGE = "rssreader";

int main(string[] args) {
    Gtk.init(ref args);

    Intl.setlocale(LocaleCategory.MESSAGES, "");
    Intl.textdomain(GETTEXT_PACKAGE);
    Intl.bind_textdomain_codeset(GETTEXT_PACKAGE, "utf-8");
    Intl.bindtextdomain(GETTEXT_PACKAGE, "./locale");

    var reader = new RSS.Reader();
    reader.show();

    Gtk.main();
    return 0;
}
