# private-terraform-module-ssh-example

This repo has been created as "minimal reproduction" repository to help the Renovate team implement a feature...

### Feature Request:
Get renovate to bump terraform modules that are stored in private (GHE) repositoires (referenced with GIT release tags), over SSH.

The problem is the modules are not even being recognised and so are not included in the `packageFiles with updates` section. The .tf file itself is being recognised, as it able to bump the terraform version which is also defined inside main.tf.

### What I have tried:
I tried to create the following GIT config in order to force SSH to use HTTPS, however the issue does not seem to be related to SSH, because the modules are not being detected.
```
git config --global url."https://${GITHUB_TOKEN}:x-oauth-basic@github.ibm.com/".insteadOf "https://github.ibm.com/"
git config --global url."https://github.ibm.com/".insteadOf git@github.ibm.com:
git config --global url."https://github.ibm.com".insteadOf ssh://git@github.ibm.com
echo -e "machine github.ibm.com\n  login ${GITHUB_TOKEN}" > ~/.netrc
```

Further discussion -> https://github.com/renovatebot/renovate/discussions/11556
