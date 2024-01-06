{
  stdenv,
  fetchFromGitHub,
  ...
}:
stdenv.mkDerivation rec {
  name = "fallout-grub-theme";
  src = fetchFromGitHub {
    owner = "luisnquin";
    repo = name;
    rev = "f3b8dafc266363a8d988b0eda7a5e92d450b1bd7";
    sha256 = "sha256-nahcgnNYl8mZpEcN8UDcqOSrGpoJ4dy3C1v07bXg0eM=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
  '';
}
