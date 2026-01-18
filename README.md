# rb-tiny-db-32

A small Ruby tool that computes text statistics for tiny.

## Objective
- Provide quick text metrics for tiny documents.
- Report top word frequencies for fast inspection.

## Use cases
- Validate tiny drafts for repeated terms before review.
- Summarize tiny notes when preparing reports.

## Usage
ruby main.rb data/sample.txt --top 5

## Output
- lines: total line count
- words: total word count
- chars: total character count
- top words: most frequent tokens (case-insensitive)

## Testing
- run `bash scripts/verify.sh`

## Notes
- Only ASCII letters and digits are treated as word characters.
