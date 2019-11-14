# ci-secrender

## From https://github.com/CivicActions/secrender

Example tool to render a template using data loaded from a YAML file. One intended use case: load an OSCAL style YAML file and render a Jinja2 template to produce the markdown for SSP front matter.

## Getting Started

### Prerequisites

You will need to have Docker installed. See the [Install Docker docs](https://docs.docker.com/install/) for more information.

[Available on Docker Hub](https://hub.docker.com/r/drydockcloud/ci-secrender)

### Secrender Operation

```bash
docker pull drydockcloud/ci-secrender
docker run -v $PWD:/src drydockcloud/ci-secrender --in example-ssp.yaml --template example-ssp.md.j2
```

## Authors

* **Tom Wood** - *Initial work* - [Woodt](https://github.com/woodt)

## License

This project is licensed under the GNU General Public License - see the [LICENSE](LICENSE) file for details.
