## Bash commands

### Conditions

```bash
# check substring
test="some information"
if [[ "$test" == *"info"* ]]; then
    echo "OK";
fi 
```