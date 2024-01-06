{
  stdenv,
  fetchFromGitHub,
  ...
}:
stdenv.mkDerivation rec {
  name = "steins-gate-grub-theme";
  src = fetchFromGitHub {
    owner = "nohashduck";
    repo = "grub";
    rev = "77d5761579bcfd0da3ebfa1e2580abfa1cb217af";
    sha256 = "sha256-puK5vnJRyHEf4DIT6S6D74SWcTgazendPjcxhPZB6KI=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/grub/theme/* $out
  '';
}
