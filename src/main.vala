int main(string[] args) {
    Gtk.init(ref args);

    var reader = new RSS.Reader();
    reader.show();

    Gtk.main();
    return 0;
}
