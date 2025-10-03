# Contributing to Outbound Ships

Thank you for your interest in contributing to the Outbound Ships project! This guide will help you understand how to contribute effectively.

## Getting Started

1. **Familiarize yourself with the structure**
   - Review the main README.md
   - Explore each workstream directory
   - Understand the unified data schema

2. **Choose your workstream**
   - Foundry Release Notes
   - Dev.Microsoft.Com Changelog
   - Data Source Management
   - Migration and Modernization

## Contribution Guidelines

### Creating Release Notes

1. Use the template in `foundry-release-notes/TEMPLATE.md`
2. Follow semantic versioning
3. Include all required sections
4. Get approval from Product Manager and Engineering Lead
5. Validate against the unified data schema

### Creating Changelog Entries

1. Use the template in `devmicrosoft-changelog/TEMPLATE.md`
2. Categorize changes appropriately
3. Include impact assessment
4. Link to relevant documentation
5. Follow the publishing schedule

### Working with Unified Data

1. All data must validate against `data-source/schema.json`
2. Use ISO 8601 format for dates
3. Include all required fields
4. Test with example data before submitting
5. Document any schema changes in a PR

### Migration Contributions

1. Document current state before making changes
2. Include rollback procedures
3. Test in staging environment first
4. Update the roadmap with progress
5. Communicate changes to stakeholders

## Workflow

### For New Content

1. Create a new branch: `git checkout -b feature/your-feature-name`
2. Add your content using the appropriate template
3. Validate against schema (if applicable)
4. Commit with descriptive message
5. Push and create a Pull Request
6. Request review from appropriate stakeholders

### For Updates

1. Create a branch: `git checkout -b update/what-you-are-updating`
2. Make your changes
3. Update any related documentation
4. Test your changes
5. Submit a PR with clear description of changes

## Pull Request Guidelines

- **Title**: Clear, concise description of changes
- **Description**: Explain what and why, not just how
- **Checklist**: Use PR template checklist
- **Reviews**: Get approval from required reviewers
- **Tests**: Ensure validation passes
- **Documentation**: Update related docs

## Code of Conduct

- Be respectful and professional
- Provide constructive feedback
- Focus on the issue, not the person
- Welcome diverse perspectives
- Help others learn and grow

## Review Process

1. **Self-Review**: Review your own changes first
2. **Peer Review**: At least one team member review
3. **Stakeholder Review**: Product/Engineering lead for releases
4. **Documentation Review**: Docs team for public-facing content
5. **Final Approval**: Designated approver for workstream

## Quality Standards

- **Accuracy**: All information must be correct and verified
- **Clarity**: Write for your audience, avoid jargon
- **Completeness**: Include all relevant information
- **Consistency**: Follow established patterns and style
- **Timeliness**: Submit content according to schedule

## Tools and Automation

- **Schema Validation**: JSON schema validation tools
- **Spell Check**: Run spell check before submitting
- **Link Checker**: Verify all links are valid
- **Format Checker**: Ensure markdown formatting is correct

## Getting Help

- **Questions**: Open an issue with the `question` label
- **Bugs**: Report bugs with the `bug` label
- **Feature Requests**: Submit with the `enhancement` label
- **Documentation**: Check the wiki for guides and FAQs

## Recognition

Contributors will be acknowledged in:
- Release notes (for significant contributions)
- Annual contributor list
- Special recognition in team meetings

Thank you for helping make our outbound activities more efficient and effective!
