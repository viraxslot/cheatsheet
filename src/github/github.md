## Github commands

### Environment variables

```bash
# save branch name when pipeline started on branch or on Pull Request
# github.event.ref - for branch
# github.head_ref - for pull request
env:
  BRANCH: ${{ github.event.ref || github.head_ref }}
```

```bash
# reuse data between steps via environment variables
- name: Previous step
  run: |
    # link.txt contains shared data
    echo "LINK=$(cat link.txt)" >> $GITHUB_ENV

- name: Current step
  env:
    REPORT_URL: ${{ env.LINK }}
```