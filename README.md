# Homebrew Tap for ZTP

[ZTP (Zyquo Tool Protocol)](https://github.com/simonpierreboucher02/ztp) — Native agent runtime for macOS. Generate Excel, Word, and PowerPoint files from JSON specs.

## Install

```bash
brew tap simonpierreboucher02/ztp
brew install ztp
```

## Upgrade

```bash
brew update
brew upgrade ztp
```

## Verify

```bash
ztp version
ztp doctor
```

## What's inside

`ztp` is a single native binary (4.3 MB, Apple Silicon, Apple notarized) that includes:

| Tool | Format | Commands |
|------|--------|----------|
| `ztp excel` | .xlsx | build, import-csv, inspect, preview, sheets, cell, validate, validate-spec |
| `ztp docx` | .docx | build, inspect, outline, text, tables, validate, validate-spec |
| `ztp slides` | .pptx | build, inspect, outline, preview, text, validate, validate-spec |

## Quick start

```bash
# Generate an Excel file
echo '{"version":"ztp-excel/0.1","sheets":[{"name":"Sheet1","cells":[{"address":"A1","value":"Hello"}]}]}' > spec.json
ztp excel build spec.json --output hello.xlsx --json

# Generate a Word document
echo '{"version":"ztp-docx/0.1","sections":[{"elements":[{"type":"heading","level":1,"text":"Hello"}]}]}' > doc.json
ztp docx build doc.json --output hello.docx --json

# Generate a PowerPoint deck
echo '{"version":"ztp-slides/0.1","slides":[{"layout":"title","title":"Hello","subtitle":"World"}]}' > deck.json
ztp slides build deck.json --output hello.pptx --json
```

## Links

- [ZTP Repository](https://github.com/simonpierreboucher02/ztp)
- [Releases](https://github.com/simonpierreboucher02/ztp/releases)
