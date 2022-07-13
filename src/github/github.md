## Github commands

### Environment variables

```bash
# save branch name when pipeline started on branch or on Pull Request
# github.event.ref - for branch
# github.head_ref - for pull request
env:
  BRANCH: ${{ github.event.ref || github.head_ref }}
```