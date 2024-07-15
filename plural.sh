VSN=$(curl --silent -qI https://github.com/pluralsh/plural-cli/releases/latest | awk -F '/' '/^location/ {print  substr($NF, 1, length($NF)-1)}')
curl -L -o plural.tgz 'https://github.com/pluralsh/plural-cli/releases/download/${VSN}/plural-cli_${VSN#v}_Darwin_arm64.tar.gz'
tar -xvf plural.tgz
chmod +x plural
mv plural /usr/local/bin/plural