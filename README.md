# Outbound Ships

A centralized repository for streamlining and improving outbound launch, disclosure, and go-to-market activities.

## Overview

This repository serves as the single source of truth for managing all outbound activities across Microsoft's product ecosystem. It provides standardized processes, templates, and automation for release notes, changelogs, and product announcements.

## Workstreams

### 1. Foundry Release Notes and Change Log
📁 **Directory**: [`foundry-release-notes/`](./foundry-release-notes/)

Centralized management of Foundry platform release notes with:
- Standardized templates for consistency
- Version-controlled release documentation
- Multi-stakeholder review process
- Automated distribution to publication channels

[Learn more →](./foundry-release-notes/README.md)

### 2. Dev.Microsoft.Com Change Log
📁 **Directory**: [`devmicrosoft-changelog/`](./devmicrosoft-changelog/)

Tracking and publishing updates to the Dev.Microsoft.Com platform:
- Content updates and new articles
- Platform features and improvements
- API documentation changes
- Tool and SDK releases

[Learn more →](./devmicrosoft-changelog/README.md)

### 3. Unified Data Source
📁 **Directory**: [`data-source/`](./data-source/)

A unified data schema and repository ensuring consistency across all workstreams:
- JSON schema for data validation
- Standardized metadata and fields
- Integration points for automation
- Example data and usage patterns

[Learn more →](./data-source/README.md) | [View Schema](./data-source/schema.json)

### 4. Migration and Modernization
📁 **Directory**: [`migration-modernization/`](./migration-modernization/)

Initiatives to modernize processes and migrate from legacy systems:
- Process automation and improvement
- System integration and consolidation
- Workflow optimization
- Continuous improvement initiatives

[Learn more →](./migration-modernization/README.md) | [View Roadmap](./migration-modernization/ROADMAP.md)

## Quick Start

**New here?** Check out the [Quick Start Guide](./QUICKSTART.md) for step-by-step instructions!

### For Release Note Authors

1. Navigate to the appropriate directory (`foundry-release-notes/` or `devmicrosoft-changelog/`)
2. Copy the `TEMPLATE.md` file
3. Fill in all required sections
4. Validate against the [unified schema](./data-source/schema.json)
5. Submit a pull request for review

### For Contributors

1. Read the [Contributing Guidelines](./CONTRIBUTING.md)
2. Choose your workstream
3. Use the appropriate issue template
4. Follow the review process
5. See your contribution go live!

### For Stakeholders

1. Review the [Migration Roadmap](./migration-modernization/ROADMAP.md)
2. Check current status and upcoming milestones
3. Provide feedback through issues or pull requests
4. Monitor progress through the project board

## Structure

```
Outbound-Ships/
├── foundry-release-notes/       # Foundry platform releases
│   ├── README.md
│   └── TEMPLATE.md
├── devmicrosoft-changelog/      # Dev.Microsoft.Com updates
│   ├── README.md
│   └── TEMPLATE.md
├── data-source/                 # Unified data schema
│   ├── README.md
│   ├── schema.json
│   └── example.json
├── migration-modernization/     # Process improvement
│   ├── README.md
│   └── ROADMAP.md
├── .github/
│   └── ISSUE_TEMPLATE/         # Issue templates
├── CONTRIBUTING.md             # Contribution guidelines
└── README.md                   # This file
```

## Key Features

- ✅ **Standardized Templates**: Consistent format across all workstreams
- ✅ **Unified Data Schema**: Single source of truth for all metadata
- ✅ **Multi-Channel Distribution**: Automated publishing to multiple platforms
- ✅ **Version Control**: Full history and traceability of all changes
- ✅ **Collaborative Workflows**: Built-in review and approval processes
- ✅ **Automation Ready**: Designed for CI/CD integration

## Workflows

### Creating a Foundry Release Note

1. Create an issue using the [Foundry Release template](./.github/ISSUE_TEMPLATE/foundry-release.md)
2. Use the [release note template](./foundry-release-notes/TEMPLATE.md)
3. Fill in all sections with accurate information
4. Validate data against the schema
5. Submit for Product Manager and Engineering Lead review
6. Publish to designated channels

### Creating a Dev.Microsoft.Com Changelog Entry

1. Create an issue using the [Changelog template](./.github/ISSUE_TEMPLATE/devmicrosoft-changelog.md)
2. Use the [changelog template](./devmicrosoft-changelog/TEMPLATE.md)
3. Categorize the change appropriately
4. Include impact assessment and links
5. Get approval from Content Owner and DevRel team
6. Schedule for publication

### Contributing to Migration Efforts

1. Review the [Migration Roadmap](./migration-modernization/ROADMAP.md)
2. Create an issue using the [Migration Task template](./.github/ISSUE_TEMPLATE/migration-task.md)
3. Document current and target states
4. Define migration steps and rollback procedures
5. Test thoroughly before production deployment
6. Update documentation and notify stakeholders

## Data Schema

All outbound activities should conform to the unified data schema defined in [`data-source/schema.json`](./data-source/schema.json). This ensures:

- Consistent data structure across platforms
- Automated validation and quality checks
- Seamless integration with publishing tools
- Reliable analytics and reporting

See [`data-source/example.json`](./data-source/example.json) for a complete example.

## Best Practices

1. **Use Templates**: Always start with the provided templates
2. **Validate Data**: Check against the JSON schema before submitting
3. **Be Specific**: Provide clear, detailed information
4. **Link Resources**: Include all relevant documentation links
5. **Review Thoroughly**: Get appropriate stakeholder approval
6. **Communicate**: Keep teams informed of changes and updates

## Support

- **Documentation**: Check the README files in each workstream directory
- **Questions**: Open an issue with the `question` label
- **Bugs**: Report using the issue template with clear reproduction steps
- **Feature Requests**: Submit enhancement ideas through issues

## Roadmap

See the [Migration and Modernization Roadmap](./migration-modernization/ROADMAP.md) for:
- Current initiatives and progress
- Upcoming features and improvements
- Timeline and milestones
- Success metrics and KPIs

## Contributing

We welcome contributions! Please read our [Contributing Guidelines](./CONTRIBUTING.md) for details on:
- How to submit changes
- Code of conduct
- Review process
- Quality standards

## License

[Specify license here]

## Contact

For questions or feedback, please:
- Open an issue in this repository
- Contact the project maintainers
- Join our team meetings (schedule in wiki)

---

**Status**: Active Development  
**Version**: 1.0.0  
**Last Updated**: 2024-01-15
