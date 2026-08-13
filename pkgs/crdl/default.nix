{ buildGoModule, fetchzip, }:

buildGoModule {
  pname = "crunchyroll-downloader";
  version = "1.1.1";

  src = fetchzip {
    url = "https://github.com/CuteTenshii/crunchyroll-downloader/archive/refs/tags/1.1.1.tar.gz";
    sha256 = "sha256-6iwgmeIGPFT5VTG36FtonhIOD6+tnDZ6iYLh+wtm9EM=";
  };

  vendorHash = "sha256-lNWzylzk/VT3/vpSlsxCnVCmUY24dn9zdOp+8TFo0yE=";
}
