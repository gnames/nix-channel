set -e
unset PATH

for p in $buildInputs; do
  export PATH=$p/bin${PATH:+:}$PATH
done

mkdir -p $out/share

cp $src $out/share