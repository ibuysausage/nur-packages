{ lib, stdenv, buildGoModule, fetchFromGitHub, makeWrapper, ffmpeg, }:

buildGoModule rec {
  pname = "crunchyroll-downloader";
  version = "516af1d";

  src = fetchFromGitHub {
    owner = "CuteTenshii";
    repo = "crunchyroll-downloader";
    rev = "${version}";
    sha256 = "sha256-pJG3gUakP6Jp+i05+MWsAd5OWN15KsxxWNdk0lh64zs=";
  };

  nativeBuildInputs = [ makeWrapper ];

  vendorHash = "sha256-lNWzylzk/VT3/vpSlsxCnVCmUY24dn9zdOp+8TFo0yE=";

  postFixup = '' 
    wrapProgram $out/bin/crunchyroll-downloader \
      --prefix PATH :  ${lib.makeBinPath [ ffmpeg ]}
  '';

  meta = with lib; {
    description = "Downloads anime from Crunchyroll and outputs them in a MKV file";
    homepage = "https://github.com/CuteTenshii/crunchyroll-downloader";
    licenses = licenses.mit;
    platforms = platforms.linux;
  };

}
