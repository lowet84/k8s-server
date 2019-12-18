for D in `find . -type d`
do
    helm package --destination ../out $D 2> /dev/null
done
exit 0