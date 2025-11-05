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
    rev = "8271296eb3841a5f8f9e768414eef7b738f570ba";
    hash = "sha256-fcUqy5n/fE8TwKhf+knUL/mEhBCorAJZd9tHNypwUvQ=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
  '';
}
