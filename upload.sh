./bumpversion.py --$1 || exit 1
python3 setup.py sdist upload -r internal
if [ "$1" == "beta" ]; then
 python3 setup.py sdist upload -r pypi
fi
if [ "$1" == "release" ]; then
 python3 setup.py sdist upload -r pypi
 ./bumpversion.py --patch
fi

