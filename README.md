## English Words Database of SVL12000

- Using SQLite3
- Converted from CSV to SQL

## Usage

- I recommend to use [`sqlitebrowser`](https://www.messenger.com/t/TO8933) as SQLite client

### Example

- Please try SQL below

```sql
SELECT word,mean,term,level
FROM `words`
WHERE 1
AND length(word) = 3
AND level > 5
LIMIT 0,20
;
```

- Result

```txt
ace|名手|名|6
aha|ははあ|  |6
ape|類人猿|名|6
cue|合図, 手がかり|名|6
dew|露|名|6
ego|自我|名|6
gem|宝石|名|6
hum|ブンブンいう|動|6
kit|道具一式|名|6
lad|少年|名|6
nun|修道女|名|6
oat|ムギ|名|6
paw|足|名|6
ram|雄羊|名|6
rip|切り裂く|動|6
tag|札|名|6
bid|入札、付値|名|7
den|ほら穴、巣穴|名|7
err|誤る|動|7
fig|イチジク|名|7
```
