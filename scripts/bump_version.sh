
	Version=$1
	SEMVER=${Version:1}

	if [ -z $2 ]
	then
		echo "Bumping package version to $1"

		sed -E "s/versionName .+/versionName \"$SEMVER\"/g" app/build.gradle > tempfile && cat tempfile > app/build.gradle && rm -f tempfile

		echo --------------------------
		echo "Done, Package now at $1"
	else
		echo "Bumping package version to $1-$2"

		sed -E "s/versionName .+/versionName \"$SEMVER-dev.$2\"/g" app/build.gradle > tempfile && cat tempfile > app/build.gradle && rm -f tempfile
		echo --------------------------

		echo "Done, Package now at $1-dev.$2"
	fi

