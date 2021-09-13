echo "Bumping package version to $1-$2"

Version=$1
SEMVER=${Version:1}

if [ -z $2 ]
then
	sed -E "s/versionName .+/versionName \"$SEMVER\"/g" app/build.gradle > tempfile && cat tempfile > app/build.gradle && rm -f tempfile
else
	sed -E "s/versionName .+/versionName \"$SEMVER-dev$2\"/g" app/build.gradle > tempfile && cat tempfile > app/build.gradle && rm -f tempfile
fi

echo --------------------------
echo "Done, Package now at $1-$2"