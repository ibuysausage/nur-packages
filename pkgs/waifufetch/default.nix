{ lib, stdenv, fetchFromGitHub, }:

stdenv.mkDerivation rec {
  pname = "waifufetch";
  version = "main";

  src = fetchFromGitHub {
    owner = "JGH0";
    repo = "waifufetch";
    rev = "${version}";
    sha256 = "sha256-4PVlNJnkO0eVTclwfg6LfBAsAnWK6W9gj+gFKCAY6P8=";
  }; 

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    
    install -Dm755 waifu $out/bin/waifu
    install -Dm755 waifufetch $out/bin/waifufetch
    install -Dm644 libwaifu.sh $out/bin/libwaifu.sh

    runHook postInstall
  '';

  meta = with lib; {
    description = "System info with a random waifu decoration";
    homepage = "https://github.com/JGH0/waifufetch";
    license = licenses.mit;
    platforms = platforms.linux;
  };

}
