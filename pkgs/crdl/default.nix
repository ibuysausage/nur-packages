{ stdenv, buildGoModule, fetchFromGitHub, }:

buildGoModule rec {
  pname = "crunchyroll-downloader";
  version = "516af1d";

  src = fetchFromGitHub {
    owner = "CuteTenshii";
    repo = "crunchyroll-downloader";
    rev = "${version}";
    sha256 = "sha256-pJG3gUakP6Jp+i05+MWsAd5OWN15KsxxWNdk0lh64zs=";
  };

  vendorHash = "sha256-lNWzylzk/VT3/vpSlsxCnVCmUY24dn9zdOp+8TFo0yE=";
}
