# Quick Start Guide

Welcome to the Outbound Ships repository! This guide will help you get started quickly.

## For New Users

### I want to create a Foundry release note

1. **Use the automation script**:
   ```bash
   ./scripts/create-release-note.sh 2.6.0 "Foundry Platform"
   ```

2. **Edit the generated file** (`foundry-release-notes/v2.6.0.md`) with your release details

3. **Create corresponding JSON data** (optional but recommended):
   - Copy `data-source/example.json`
   - Update with your release information
   - Validate: `./scripts/validate-data.sh your-file.json`

4. **Submit for review**:
   - Create an issue using the [Foundry Release template](.github/ISSUE_TEMPLATE/foundry-release.md)
   - Create a pull request with your changes

### I want to create a Dev.Microsoft.Com changelog entry

1. **Use the automation script**:
   ```bash
   ./scripts/create-changelog.sh platform
   ```
   Categories: `content`, `platform`, `api`, `tool`, `deprecation`, `issue`

2. **Edit the generated file** with your changelog details

3. **Submit for review**:
   - Create an issue using the [Changelog template](.github/ISSUE_TEMPLATE/devmicrosoft-changelog.md)
   - Create a pull request with your changes

### I want to contribute to migration efforts

1. **Review the roadmap**:
   - Read [migration-modernization/ROADMAP.md](migration-modernization/ROADMAP.md)
   - Identify tasks you can help with

2. **Create a tracking issue**:
   - Use the [Migration Task template](.github/ISSUE_TEMPLATE/migration-task.md)
   - Document your plan

3. **Submit your work**:
   - Create a pull request
   - Link to your tracking issue

## Common Tasks

### Validate JSON data

```bash
./scripts/validate-data.sh path/to/your-file.json
```

### Check the unified data schema

View the schema:
```bash
cat data-source/schema.json
```

See an example:
```bash
cat data-source/example.json
```

### Create a new issue

Browse templates in `.github/ISSUE_TEMPLATE/`:
- `foundry-release.md` - For release notes
- `devmicrosoft-changelog.md` - For changelog entries
- `migration-task.md` - For migration work
- `general-issue.md` - For everything else

## File Locations

| What | Where |
|------|-------|
| Foundry release notes | `foundry-release-notes/` |
| Dev.Microsoft.Com changelogs | `devmicrosoft-changelog/` |
| Data schema and examples | `data-source/` |
| Migration roadmap | `migration-modernization/` |
| Automation scripts | `scripts/` |
| Templates | `*/TEMPLATE.md` |

## Getting Help

- **General questions**: Create an issue with the `question` label
- **Documentation**: Check README files in each directory
- **Contributing guidelines**: See [CONTRIBUTING.md](CONTRIBUTING.md)
- **Detailed information**: See [README.md](README.md)

## Workflows Overview

```
Creating Content → Use Template → Fill Details → Validate → Submit PR → Review → Publish
```

### Review Process

1. Self-review your changes
2. Create pull request
3. Automated checks run (schema validation, linting)
4. Peer review
5. Stakeholder approval
6. Merge and publish

## Tips

- ✅ Always use templates for consistency
- ✅ Validate JSON data before submitting
- ✅ Follow the review process
- ✅ Link to related issues and PRs
- ✅ Update documentation when needed
- ❌ Don't skip validation
- ❌ Don't bypass the review process
- ❌ Don't commit directly to main

## Next Steps

1. Read the [Contributing Guidelines](CONTRIBUTING.md)
2. Explore the workstream directories
3. Check out the [Migration Roadmap](migration-modernization/ROADMAP.md)
4. Try creating a sample release note or changelog
5. Join the discussion in issues

---

**Need more help?** Open an issue or check the full [README.md](README.md)
