# NBA Analytics dbt Project

This project uses dbt (data build tool) to transform NBA data for analytics purposes. The project includes various models for analyzing team performance, player statistics, game results, and more.

## Project Overview

This dbt project transforms raw NBA data stored in a PostgreSQL database into analytics-ready models. The data model includes:
- Team information and history
- Player statistics and demographics
- Game results and detailed statistics
- Draft combine statistics
- Play-by-play data

## Architecture

- **Database**: PostgreSQL (running in Docker)
- **Transformation**: dbt core
- **Data Visualization**: Lightdash
- **Version Control**: GitHub

## Prerequisites

- macOS (tested on M3 Air)
- Docker
- PostgreSQL
- dbt Core
- Python 3.x
- VSCode (recommended)
- Git

## Local Setup

1. **Clone the repository**
```bash
git clone <repository-url>
cd nba-dbt
```

2. **Set up Docker and PostgreSQL**
```bash
# Start PostgreSQL container
docker-compose up -d
```

3. **Install dbt dependencies**
```bash
# Install required dbt packages
dbt deps
```

4. **Configure dbt Profile**
Create a `profiles.yml` file in `~/.dbt/` with the following configuration:
```yaml
nba_dbt:
  outputs:
    dev:
      dbname: nba_db
      host: localhost
      pass: <your-password>
      port: <your-port>
      schema: dbt_dev
      threads: 1
      type: postgres
      user: <your-user>
  target: dev
```

5. **Test the connection**
```bash
dbt debug
```

## Project Structure

```
nba_dbt/
├── analyses/
├── macros/
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
└── README.md
```

## Data Models

The project is organized into three main layers:

1. **Staging Models**: Clean and standardize raw data
   - Teams
   - Players
   - Games
   - Draft data

2. **Intermediate Models**: Create reusable transformed tables
   - Team statistics
   - Player statistics
   - Game analysis

3. **Mart Models**: Business-ready data models
   - Team performance analytics
   - Player performance analytics
   - Game insights
   - Draft analysis

## Running the Project

```bash
# Run all models
dbt run

# Run specific models
dbt run --select staging.nba
dbt run --select marts.core

# Run tests
dbt test

# Generate documentation
dbt docs generate
dbt docs serve
```

## Lightdash Integration

This project is configured to work with Lightdash for data visualization. The models are structured to create meaningful metrics and dimensions for dashboard creation.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## Development Workflow

1. Create a new branch for your feature
```bash
git checkout -b feature/new-analysis
```

2. Make your changes and test them
```bash
dbt run --select your_new_model
dbt test --select your_new_model
```

3. Commit and push your changes
```bash
git add .
git commit -m "Add new analysis model"
git push origin feature/new-analysis
```
