# megaclid Docker Usage

This image provides MegaCMD CLI tools in a Debian 12 container.

## Environment Variables
- `MEGA_USER`: Your MEGA account email
- `MEGA_PASS`: Your MEGA account password

If both are set, the container will log in automatically at startup.

## Example: Upload a file with mega-put

Upload a `test.txt` file from a local folder called `backup` to remote `bkp_mega` folder
Envs are set in .env file

```fish
docker run --rm --platform=linux/x86_64 --env-file .env -v $PWD/backup:/backup ghcr.io/felipereyel/megaclid:latest mega-put /backup/test.txt bkp_mega
```

## Help

By default, the container shows MegaCMD help. Override the command to use other MegaCMD features.
