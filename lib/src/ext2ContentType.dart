part of amazon_S3;

ContentType getContentTypeByExtension(String strExtension) {
  switch (strExtension) {
    case ".fif":
      return new ContentType("application", "fractals");

    case ".hta":
      return new ContentType("application", "hta");

    case ".hqx":
      return new ContentType("application", "mac-binhex40");

    case ".vsi":
      return new ContentType("application", "ms-vsi");

    case ".p10":
      return new ContentType("application", "pkcs10");

    case ".p7m":
      return new ContentType("application", "pkcs7-mime");

    case ".p7s":
      return new ContentType("application", "pkcs7-signature");

    case ".cer":
      return new ContentType("application", "pkix-cert");

    case ".crl":
      return new ContentType("application", "pkix-crl");

    case ".ps":
      return new ContentType("application", "postscript");

    case ".setpay":
      return new ContentType("application", "set-payment-initiation");

    case ".setreg":
      return new ContentType("application", "set-registration-initiation");

    case ".sst":
      return new ContentType("application", "vnd.ms-pki.certstore");

    case ".pko":
      return new ContentType("application", "vnd.ms-pki.pko");

    case ".cat":
      return new ContentType("application", "vnd.ms-pki.seccat");

    case ".stl":
      return new ContentType("application", "vnd.ms-pki.stl");

    case ".wpl":
      return new ContentType("application", "vnd.ms-wpl");

    case ".xps":
      return new ContentType("application", "vnd.ms-xpsdocument");

    case ".z":
      return new ContentType("application", "x-compress");

    case ".tgz":
      return new ContentType("application", "x-compressed");

    case ".gz":
      return new ContentType("application", "x-gzip");

    case ".ins":
      return new ContentType("application", "x-internet-signup");

    case ".iii":
      return new ContentType("application", "x-iphone");

    case ".jtx":
      return new ContentType("application", "x-jtx+xps");

    case ".latex":
      return new ContentType("application", "x-latex");

    case ".nix":
      return new ContentType("application", "x-mix-transfer");

    case ".asx":
      return new ContentType("application", "x-mplayer2");

    case ".application":
      return new ContentType("application", "x-ms-application");

    case ".wmd":
      return new ContentType("application", "x-ms-wmd");

    case ".wmz":
      return new ContentType("application", "x-ms-wmz");

    case ".xbap":
      return new ContentType("application", "x-ms-xbap");

    case ".p12":
      return new ContentType("application", "x-pkcs12");

    case ".p7b":
      return new ContentType("application", "x-pkcs7-certificates");

    case ".p7r":
      return new ContentType("application", "x-pkcs7-certreqresp");

    case ".sit":
      return new ContentType("application", "x-stuffit");

    case ".tar":
      return new ContentType("application", "x-tar");

    case ".man":
      return new ContentType("application", "x-troff-man");

    case ".cer":
      return new ContentType("application", "x-x509-ca-cert");

    case ".zip":
      return new ContentType("application", "x-zip-compressed");

    case ".xaml":
      return new ContentType("application", "xaml+xml");

    case ".xml":
      return new ContentType("application", "xml");

    case ".aiff":
      return new ContentType("audio", "aiff");

    case ".au":
      return new ContentType("audio", "basic");

    case ".mid":
      return new ContentType("audio", "mid");

    case ".mid":
      return new ContentType("audio", "midi");

    case ".mp3":
      return new ContentType("audio", "mp3");

    case ".mp3":
      return new ContentType("audio", "mpeg");

    case ".m3u":
      return new ContentType("audio", "mpegurl");

    case ".mp3":
      return new ContentType("audio", "mpg");

    case ".wav":
      return new ContentType("audio", "wav");

    case ".aiff":
      return new ContentType("audio", "x-aiff");

    case ".mid":
      return new ContentType("audio", "x-mid");

    case ".mid":
      return new ContentType("audio", "x-midi");

    case ".mp3":
      return new ContentType("audio", "x-mp3");

    case ".mp3":
      return new ContentType("audio", "x-mpeg");

    case ".m3u":
      return new ContentType("audio", "x-mpegurl");

    case ".mp3":
      return new ContentType("audio", "x-mpg");

    case ".wax":
      return new ContentType("audio", "x-ms-wax");

    case ".wma":
      return new ContentType("audio", "x-ms-wma");

    case ".wav":
      return new ContentType("audio", "x-wav");

    case ".bmp":
      return new ContentType("image", "bmp");

    case ".gif":
      return new ContentType("image", "gif");

    case ".jpg":
      return new ContentType("image", "jpeg");

    case ".jpeg":
      return new ContentType("image", "jpeg");

    case ".png":
      return new ContentType("image", "png");

    case ".tiff":
      return new ContentType("image", "tiff");

    case ".ico":
      return new ContentType("image", "x-icon");

    case ".png":
      return new ContentType("image", "x-png");

    case ".mid":
      return new ContentType("midi", "mid");

    case ".dwfx":
      return new ContentType("model", "vnd.dwfx+xps");

    case ".css":
      return new ContentType("text", "css");

    case ".323":
      return new ContentType("text", "h323");

    case ".htm":
      return new ContentType("text", "html");

    case ".uls":
      return new ContentType("text", "iuls");

    case ".txt":
      return new ContentType("text", "plain");

    case ".wsc":
      return new ContentType("text", "scriptlet");

    case ".htt":
      return new ContentType("text", "webviewhtml");

    case ".htc":
      return new ContentType("text", "x-component");

    case ".vcf":
      return new ContentType("text", "x-vcard");

    case ".xml":
      return new ContentType("text", "xml");

    case ".avi":
      return new ContentType("video", "avi");

    case ".mpeg":
      return new ContentType("video", "mpeg");

    case ".mpeg":
      return new ContentType("video", "mpg");

    case ".avi":
      return new ContentType("video", "msvideo");

    case ".mpeg":
      return new ContentType("video", "x-mpeg");

    case ".mpeg":
      return new ContentType("video", "x-mpeg2a");

    case ".asx":
      return new ContentType("video", "x-ms-asf");

    case ".asx":
      return new ContentType("video", "x-ms-asf-plugin");

    case ".wm":
      return new ContentType("video", "x-ms-wm");

    case ".wmv":
      return new ContentType("video", "x-ms-wmv");

    case ".wmx":
      return new ContentType("video", "x-ms-wmx");

    case ".wvx":
      return new ContentType("video", "x-ms-wvx");

    case ".avi":
      return new ContentType("video", "x-msvideo");

    default:
      return null;
  }
}
