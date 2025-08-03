# megaclid Docker Usage

This image provides MegaCMD CLI tools in a Debian 12 container.

## Environment Variables
- `MEGA_USER`: Your MEGA account email
- `MEGA_PASS`: Your MEGA account password

If both are set, the container will log in automatically at startup.

## Example: Upload a file with mega-put

```fish
# Build the image (use buildx for amd64 if needed)
docker buildx build --platform linux/amd64 -t megaclid .

# Run and upload a file
set -x MEGA_USER "your@email.com"
set -x MEGA_PASS "yourpassword"
docker run --rm -e MEGA_USER -e MEGA_PASS -v (pwd):/data megaclid mega-put /data/myfile.txt /Root
```

This will upload `myfile.txt` from your current directory to your MEGA root folder.

## Help
By default, the container shows MegaCMD help. Override the command to use other MegaCMD features.
