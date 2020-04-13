# Repo structure

## Install folder

The files in here are meant to install only the entitled application, without worring about dependencies.

E.g.: The `install/drush.sh` script requires you to have composer or to `install/composer.sh` before running it.

## Uninstall folder

These files will complete uninstall and purge the application, and will try to remove its lingering folders, files, volumes, containers, pods and so on.

They do __not__ remove the required applications and libs.

## Purge folder

The purge files are meant to be bundles, uninstalling more than one application.

E.g.: The `purge/docker.sh` will completly uninstall _ddev_, _docksal_, _lando_ and _docker_.

# Clone repository and give execution permissions

```
git clone git@github.com:maikel-cit/scripts.git scripts
cd scripts
chmod -R +x ./**/*.sh
```

# Uninstall applications

If you have cloned this repo and given execution permissions, run from the repo folder:

```
./uninstall/docker.sh
```
or
```
./purge/docker.sh
```

# Install applications
If you have cloned this repo and given execution permissions, run from the repo folder:

```
./install/docker.sh
```
