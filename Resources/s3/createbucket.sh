

if [ -z "$1" ]; then
    echo "Needs bucket name"
    exit 1
fi

aws s3api create-bucket \
--bucket $1 \
--create-bucket-configuration="LocationConstraint=ap-south-1" \
--query Location \
--output text