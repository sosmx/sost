if [ ! -d "vcv" ]; then
    git clone https://github.com/xsosi/vcv
    cd vcv
else
    cd vcv
fi

python3 -m AnonXMusic
