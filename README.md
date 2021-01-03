<a href="https://github.com/actions-museum">
    <img src="https://avatars1.githubusercontent.com/u/76897915?s=200&v=4" alt="icon" title="icon" align="right" height="120" />
</a>

# Action Pixela
[![CI][CI]][CI-status]
[![GitHub Marketplace][MarketPlace]][MarketPlace-status]
[![Mergify Status][mergify-status]][mergify]

A GitHub Action posts metrics to [Pixela](https://pixe.la).
See details of the metrics on the [official doc](https://docs.pixe.la/entry/post-pixel).

## Usage

```yml
      - name: Post Metrics
        uses: actions-museum/action-pixela@v1
        with:
          graph-id: todays-running
          username: ${{ secrets.PIXELA_USERNAME }}
          token: ${{ secrets.PIXELA_TOKEN }}
```

### With quantity specified

```yml
      - name: Post Metrics
        uses: actions-museum/action-pixela@v1
        with:
          graph-id: todays-running
          username: ${{ secrets.PIXELA_USERNAME }}
          token: ${{ secrets.PIXELA_TOKEN }}
          quantity: 10
```

### Action inputs

| Name | Description | Default |
| --- | --- | --- |
| `date` | Event time of the metrics. If not specified, it will use the `date +%Y%m%d` when posting to the API.  | Current datetime |
| `graph-id` | ID of the graph | - (Required) |
| `username` | Name of the user | - (Required)|  
| `quantity` | Value of the metrics | 1 |
| `token` | Token to access the API | - (Required) |

### Action outputs

No outputs.

<!-- Badge links -->
[CI]: https://github.com/actions-museum/action-pixela/workflows/Test/badge.svg
[CI-status]: https://github.com/actions-museum/action-pixela/actions?query=workflow%3ATest

[MarketPlace]: https://img.shields.io/badge/Marketplace-Pixela%20Action-green.svg?colorA=24292e&colorB=0366d6&style=flat&longCache=true&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAM6wAADOsB5dZE0gAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAERSURBVCiRhZG/SsMxFEZPfsVJ61jbxaF0cRQRcRJ9hlYn30IHN/+9iquDCOIsblIrOjqKgy5aKoJQj4O3EEtbPwhJbr6Te28CmdSKeqzeqr0YbfVIrTBKakvtOl5dtTkK+v4HfA9PEyBFCY9AGVgCBLaBp1jPAyfAJ/AAdIEG0dNAiyP7+K1qIfMdonZic6+WJoBJvQlvuwDqcXadUuqPA1NKAlexbRTAIMvMOCjTbMwl1LtI/6KWJ5Q6rT6Ht1MA58AX8Apcqqt5r2qhrgAXQC3CZ6i1+KMd9TRu3MvA3aH/fFPnBodb6oe6HM8+lYHrGdRXW8M9bMZtPXUji69lmf5Cmamq7quNLFZXD9Rq7v0Bpc1o/tp0fisAAAAASUVORK5CYII=
[MarketPlace-status]: https://github.com/marketplace/actions/action-pixela

[mergify]: https://mergify.io
[mergify-status]: https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/actions-museum/action-pixela&style=flat

## License

Released by [MIT License](./LICENSE).
