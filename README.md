# GitHub Actions Workflows
Collection of GitHub Workers for JavaScript, Docker, Terraform, AWS

## Lint
- html
  - ally - https://github.com/marketplace/axe-linter
  - webhint - https://webhint.io/
  - w3c - https://validator.w3.org/
  - Nu HTML - https://validator.w3.org/nu - cli: https://github.com/dominicbarnes/nu-html-checker-cli
- rda (schema.org)
  - https://developers.google.com/search/docs/advanced/structured-data
- js
  - prettier
  - standard
- tf
  - tf fmt
- git
  - conventional commit

- on-commit
  - husky
  - lint-staged

## Testing


- bundle size
  - js
    - https://github.com/ai/size-limit
    - https://github.com/bundlewatch/bundlewatch
    - https://github.com/siddharthkp/bundlesize
    - https://github.com/doesdev/rollup-plugin-analyzer
  - css
- unit
  - browser (playwrite?)
  - nodejs (ava, sinon)
- e2e
  - browser (playwrite?)
  - nodejs (ava, sinon)
- load tests (API) - k6


## Accessibility

- Lighthouse - https://web.dev/lighthouse-ci/
- axe - built into Lighthouse
- VoiceOver - https://www.smashingmagazine.com/2021/06/automating-screen-reader-testing-macos-autovo/
- readability - readability-checker
- inconsiderate check - alexjs.com


- lhci action - https://calendar.perfplanet.com/2020/running-lighthouse-in-github-actions/
- ally actions - https://www.adrianbolonio.com/en/accessibility-github-actions/

## Performance

- WebPageSpeed - https://github.com/marketplace/actions/webpagetest-github-action
- Lighthouse - https://web.dev/lighthouse-ci/
- Lighthouse User Flows - https://web.dev/lighthouse-user-flows/
- tracerbench - https://www.tracerbench.com/docs/guide
- fuite (Memory) - https://nolanlawson.com/2021/12/17/introducing-fuite-a-tool-for-finding-memory-leaks-in-web-apps/
- benchmarks (nodejs) - ??

## Security
### Scores
- https://github.com/ossf/criticality_score
- https://github.com/ossf/scorecard

### Secrets
  - trufflehog
  - gitleaks - https://github.com/zricethezav/gitleaks
  - git-secrets - https://github.com/awslabs/git-secrets

### SCA
  1. dep only use strict versions
  2. outdated deps
  3. unused deps
  4. vulnerable deps / sub-deps
  5. licensing
  
|                | Strict | Outdated | Unused    | Vulnerable | Licensing 
|----------------|--------|----------|-----------|------------|-----------
| JavaScript     | DOCS   | npm      | npm-check | npm,synk   | fossa,snyk
| Docker         | DOCS   | ??       | N/A       | aws,snyk,trivy | ??
| Terraform      | DOCS   | ??       | N/A       | N/A        | ??
| GitHub Actions | zgosalvez/github-actions-ensure-sha-pinned-actions | ??       | N/A       | ??         | ??

- script to update all npm - https://elijahmanor.com/byte/update-node-deps
- example of locked actions - https://github.com/awslabs/aws-lambda-powertools-python/pull/1301/files#diff-a953f14a734733a344c1ec7df41cad6e02866130a9cc7a7028bf09edad6c1f9f
- unused for js alt - https://github.com/smeijer/unimported
- fossa - https://github.com/marketplace/actions/fossa-action
- docker health check - https://github.com/aelsabbahy/goss

### SAST

|            | SAST
|------------|----------------------------------
| JavaScript | codeql,semgrep,snyk,sonarcloud
| Terraform  | tflint,tfsec,checkov,regula,snyk

- sonar - https://github.com/marketplace/actions/sonarqube-scan
- codeql - https://github.com/github/codeql-action
- tflint plugin: https://github.com/awslabs/serverless-rules

### DAST
  
|            | DAST
|------------|-----------------
| JavaScript | zap (app,api)
| WAF        | gotestwaf
| Terraform  | aws,cis,prowler

- `docker run -v ${PWD}:/app/reports wallarm/gotestwaf --url https://datastream.org/api/health --wsUrl datastream.org/ws --skipWAFBlockCheck --verbose`
- js-dast - https://github.com/lirantal/is-website-vulnerable
- fuzzing?
