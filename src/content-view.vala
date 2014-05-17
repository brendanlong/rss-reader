class RSS.ContentView : WebKit.WebView {
    public ContentView() {
        expand = true;
        load_html("<h2>Text content</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra rhoncus mi, rhoncus condimentum augue mattis at. Sed eget lectus cursus, venenatis nisi ut, viverra felis. In accumsan elit non enim porttitor ullamcorper ac vel mauris. In condimentum accumsan turpis, eu tincidunt velit aliquam sit amet. Praesent scelerisque tempor fringilla. Sed velit sem, fringilla at magna sit amet, malesuada rhoncus odio. Duis ac tempus augue. Phasellus in magna convallis, aliquet sapien sit amet, feugiat magna. Phasellus hendrerit lacus non cursus bibendum. Curabitur rhoncus quam gravida orci placerat, vel convallis odio posuere. Suspendisse egestas sed libero nec iaculis. Praesent tempor placerat elit, vitae congue arcu.</p>", null);
    }
}
