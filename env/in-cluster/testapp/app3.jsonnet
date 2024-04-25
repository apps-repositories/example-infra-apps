local deploy = import '../../../lib/deploy.libsonnet';
local currentTag = importstr './currentTag.txt';
[
  deploy.app(
    name = 'myapp-2',
    image = 'ghcr.io/eliihen/remix-test',
    tag = currentTag,
  ) {
    metadata+: {
      labels+: {
        team: 'myteam',
      }
    }
  }
]
