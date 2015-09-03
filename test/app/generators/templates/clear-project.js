var createScript = require('../create-script')
var path = require('path')

module.exports = function (opts) {
  return createScript([
    '',
    'echo ""',
    'echo " - Cleaning {{=it.repoOwner}}/{{=it.name}}#{{=it.branch}}..."',
    '',
    'echo "   $ cd /tmp/buttons/{{=it.name}} folder"',
    'cd /tmp/buttons/{{=it.name}}',
    '',
    'echo " - stoping systems..."',
    'echo "   $ azk stop"',
    'azk stop',
    '',
    'echo " - removing any persistent/sync folders..."',
    '',
    'PLATFORM="unknown"',
    'UNAMESTR=`uname`',
    'if [[ "$UNAMESTR" == "Linux" ]]; then',
    '   PLATFORM="linux"',
    'elif [[ "$UNAMESTR" == "FreeBSD" ]]; then',
    '   PLATFORM="freebsd"',
    'fi',
    '',
    'MANIFEST_ID=$(azk info | grep -e "\\(sync_folders\\|persistent_folders\\)" | awk -F ":" "{ print $2 }" | sed "s/.*\\(persistent_folders\\|sync_folders\\)\\/\\(\\w\\+\\).*/\\2/g" | tail -n 1)',
    'if [[ $AZK_USE_VM == "true" || $PLATFORM == "freebsd" ]]; then',
    '  echo " - removing from VM..."',
    '  azk vm ssh -- sudo rm -rf /mnt/sda1/azk/sync_folders/$MANIFEST_ID /mnt/sda1/azk/persistent_folders/$MANIFEST_ID',
    'else',
    '  echo " - removing from Linux HOST..."',
    '  sudo rm -rf ~/.azk/data/sync_folders/$MANIFEST_ID ~/.azk/data/persistent_folders/$MANIFEST_ID',
    'fi',
    '',
    // 'echo " - removing old project folder if exists..."',
    // 'cd /tmp/buttons',
    // 'sudo rm -rf /tmp/buttons/{{=it.name}}',
    ''
  ].join('\n'),

  path.join(__dirname, '../../build/scripts/clear/',
    opts.repoOwner + '-' + opts.name + '-' + opts.branch + '.sh'),

  opts)
}
