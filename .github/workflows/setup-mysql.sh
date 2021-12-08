#/bin/bash

set -ex

if [ "$RUNNER_OS" = "Windows" ]; then
    echo TODO
fi

if [ "$RUNNER_OS" = "macOS" ]; then
    brew install mysql
    brew services start mysql
fi

echo 'TEST_MYSQL_URI="mysql://root:root@localhost:3306/tests"' >> $GITHUB_ENV
echo 'TEST_MYSQL_URI_MIGRATE="mysql://root:root@localhost:3306/tests-migrate"' >> $GITHUB_ENV
echo 'TEST_MYSQL_SHADOWDB_URI_MIGRATE="mysql://root:root@localhost:3306/tests-migrate-shadowdb"' >> $GITHUB_ENV
