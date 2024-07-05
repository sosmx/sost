if [ ! -d "vcv" ]; then
    git clone https://github.com/xsosi/vcv
    cd vcv
    pip3 install --upgrade pip
    pip3 install -U -r requirements.txt
else
    cd vcv
fi

python3 -m AnonXMusic
