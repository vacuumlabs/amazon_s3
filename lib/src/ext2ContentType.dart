part of amazon_S3;

String getContentTypeByExtension(String strExtension)
{
    switch (strExtension)
    {
        case ".fif":
            return "application/fractals";
            break;

        case ".hta":
            return "application/hta";
            break;

        case ".hqx":
            return "application/mac-binhex40";
            break;

        case ".vsi":
            return "application/ms-vsi";
            break;

        case ".p10":
            return "application/pkcs10";
            break;

        case ".p7m":

            return "application/pkcs7-mime";
            break;

        case ".p7s":

            return "application/pkcs7-signature";
            break;

        case ".cer":

            return "application/pkix-cert";
            break;

        case ".crl":

            return "application/pkix-crl";
            break;

        case ".ps":

            return "application/postscript";
            break;

        case ".setpay":

            return "application/set-payment-initiation";
            break;

        case ".setreg":

            return "application/set-registration-initiation";
            break;

        case ".sst":

            return "application/vnd.ms-pki.certstore";
            break;

        case ".pko":

            return "application/vnd.ms-pki.pko";
            break;

        case ".cat":

            return "application/vnd.ms-pki.seccat";
            break;

        case ".stl":

            return "application/vnd.ms-pki.stl";
            break;

        case ".wpl":

            return "application/vnd.ms-wpl";
            break;

        case ".xps":

            return "application/vnd.ms-xpsdocument";
            break;

        case ".z":

            return "application/x-compress";
            break;

        case ".tgz":

            return "application/x-compressed";
            break;

        case ".gz":

            return "application/x-gzip";
            break;

        case ".ins":

            return "application/x-internet-signup";
            break;

        case ".iii":

            return "application/x-iphone";
            break;

        case ".jtx":

            return "application/x-jtx+xps";
            break;

        case ".latex":

            return "application/x-latex";
            break;

        case ".nix":

            return "application/x-mix-transfer";
            break;

        case ".asx":

            return "application/x-mplayer2";
            break;

        case ".application":

            return "application/x-ms-application";
            break;

        case ".wmd":

            return "application/x-ms-wmd";
            break;

        case ".wmz":

            return "application/x-ms-wmz";
            break;

        case ".xbap":

            return "application/x-ms-xbap";
            break;

        case ".p12":

            return "application/x-pkcs12";
            break;

        case ".p7b":

            return "application/x-pkcs7-certificates";
            break;

        case ".p7r":

            return "application/x-pkcs7-certreqresp";
            break;

        case ".sit":

            return "application/x-stuffit";
            break;

        case ".tar":

            return "application/x-tar";
            break;

        case ".man":

            return "application/x-troff-man";
            break;

        case ".cer":

            return "application/x-x509-ca-cert";
            break;

        case ".zip":

            return "application/x-zip-compressed";
            break;

        case ".xaml":

            return "application/xaml+xml";
            break;

        case ".xml":

            return "application/xml";
            break;

        case ".aiff":

            return "audio/aiff";
            break;

        case ".au":

            return "audio/basic";
            break;

        case ".mid":

            return "audio/mid";
            break;

        case ".mid":

            return "audio/midi";
            break;

        case ".mp3":

            return "audio/mp3";
            break;

        case ".mp3":

            return "audio/mpeg";
            break;

        case ".m3u":

            return "audio/mpegurl";
            break;

        case ".mp3":

            return "audio/mpg";
            break;

        case ".wav":

            return "audio/wav";
            break;

        case ".aiff":

            return "audio/x-aiff";
            break;

        case ".mid":

            return "audio/x-mid";
            break;

        case ".mid":

            return "audio/x-midi";
            break;

        case ".mp3":

            return "audio/x-mp3";
            break;

        case ".mp3":

            return "audio/x-mpeg";
            break;

        case ".m3u":

            return "audio/x-mpegurl";
            break;

        case ".mp3":

            return "audio/x-mpg";
            break;

        case ".wax":

            return "audio/x-ms-wax";
            break;

        case ".wma":

            return "audio/x-ms-wma";
            break;

        case ".wav":

            return "audio/x-wav";
            break;

        case ".bmp":

            return "image/bmp";
            break;

        case ".gif":

            return "image/gif";
            break;

        case ".jpg":

            return "image/jpeg";
            break;

        case ".jpeg":

            return "image/jpeg";
            break;

        case ".png":

            return "image/png";
            break;

        case ".tiff":

            return "image/tiff";
            break;

        case ".ico":

            return "image/x-icon";
            break;

        case ".png":

            return "image/x-png";
            break;

        case ".mid":

            return "midi/mid";
            break;

        case ".dwfx":

            return "model/vnd.dwfx+xps";
            break;

        case ".css":

            return "text/css";
            break;

        case ".323":

            return "text/h323";
            break;

        case ".htm":

            return "text/html";
            break;

        case ".uls":

            return "text/iuls";
            break;

        case ".txt":

            return "text/plain";
            break;

        case ".wsc":

            return "text/scriptlet";
            break;

        case ".htt":

            return "text/webviewhtml";
            break;

        case ".htc":

            return "text/x-component";
            break;

        case ".vcf":

            return "text/x-vcard";
            break;

        case ".xml":

            return "text/xml";
            break;

        case ".avi":

            return "video/avi";
            break;

        case ".mpeg":

            return "video/mpeg";
            break;

        case ".mpeg":

            return "video/mpg";
            break;

        case ".avi":

            return "video/msvideo";
            break;

        case ".mpeg":

            return "video/x-mpeg";
            break;

        case ".mpeg":

            return "video/x-mpeg2a";
            break;

        case ".asx":

            return "video/x-ms-asf";
            break;

        case ".asx":

            return "video/x-ms-asf-plugin";
            break;

        case ".wm":

            return "video/x-ms-wm";
            break;

        case ".wmv":

            return "video/x-ms-wmv";
            break;

        case ".wmx":

            return "video/x-ms-wmx";
            break;

        case ".wvx":

            return "video/x-ms-wvx";
            break;

        case ".avi":

            return "video/x-msvideo";
            break;
    }
}