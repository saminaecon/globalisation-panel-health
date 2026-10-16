# globalisation-panel-health
Panel data analysis (1972–2018) assessing the impacts of multidimensional KOF globalization indices on life expectancy and child mortality across 193 countries.
# Globalization and Public Health Outcomes: Panel Data Evidence (1972–2018)
This repository contains the replication framework, data documentation, and empirical routines evaluating the structural impacts of multidimensional globalization on macro-health outcomes.

## Project Scope & Identification Framework
* **Data Structure:** Longitudinal Panel Data (N = 193 Countries | T = 1972 – 2018)
* **Core Dependent Variables (\(Y_{it}\)):** Life Expectancy at Birth (`le`), Infant Mortality Rate (`imr`)
* **Primary Explanatory Vector:** KOF Globalization Indices 
  * Overall Globalization (`kof`)
  * Sub-Dimensions: Social (`kofsoc`), Economic (`kofec`), Political (`kofpol`)
  * Operational Mechanics: *De Facto* (`kofdf`) vs. *De Jure* (`kofdj`) variants
* **Control Vector (\(Z_{it}\)):** GDP per capita (`gdppc`), School Enrollment (`ss`), Urbanization Rate (`urbanpopulationoftotalpopulation`), Population Growth (`popgr`), Age Dependency Ratio (`agedep`), and Physicians Availability (`phy`).

## Data Sources
1. **Globalization Metrics:** [KOF Globalization Index](https://kof.ethz.ch/) (ETH Zürich). 
2. **Health & Macroeconomic Controls:** [World Development Indicators (WDI)](https://databank.worldbank.org/) (World Bank).
## Data Pre-Processing
* **Tool Infrastructure:** Excel Power Query Engine.
* **Pipeline:** Reshaped irregular, stacked cross-sectional institutional tables from the World Development Indicators (WDI) and ETH Zürich (KOF) into a structured panel matrix mapped by standard country-year index dimensions.

## Data Cleaning & Alignment Workflow
Because WDI and KOF tracking frameworks use varying country naming conventions, regional codes, and structural layouts, a multi-phase alignment matrix was executed:
* **Tool Utilized:** Microsoft Excel (Power Query Engine).
* **Execution Strategy:** Country profiles were normalized using standard ISO 3-letter codes where available, or aligned via fuzzy-matching conditional loops. Row-to-column pivots converted stacked temporal indices into structural panel formats (Country-Year identifiers).
* **Missing Value Protocols:** Structural gaps were preserved or logically handled during panel setups rather than using arbitrary forward-fills, protecting the statistical integrity of the long-term trends.

## Econometric Methodology & Routine Architecture
The executable Stata script (`master_analysis.do`) progresses through a 4-tier empirical pipeline:

### 1. Exploratory & Summary Analysis
* Full descriptive matrix initialization (`sum`) and cross-variable correlation diagnostics (`correlate`) to inspect distribution features and potential high-level collinearity.

### 2. Functional Form & Specification Diagnostics
* **Model Specification:** Executed Link Tests (`linktest`) post-estimation to evaluate structural functional form correctness and check for omitted variable issues.
* **Multicollinearity:** Evaluated Variance Inflation Factors (`vif`) across baseline parameters to ensure stable coefficient estimations.
* **Heteroscedasticity:** Conducted Breusch-Pagan/Cook-Weisberg tests (`hettest`) to check for non-constant error variance.

### 3. Panel Estimations (Static & Comparative)
* **Pooled OLS Baselines:** Established benchmarking models mapping baseline health trajectories against isolated globalization indices.
* **Longitudinal Controls:** Implemented Panel Fixed Effects (`fe`) to capture within-country variations while neutralizing unobserved, time-invariant country heterogeneity.
* **Efficiency Mapping:** Implemented Panel Random Effects (`re`) to assess cross-sectional variations.

### 4. Empirical Sensitivity & Robustness Checks
* Executed systematic step-by-step covariate additions (incorporating `phy`, `agedep`, and `popgr` sequentially) across overall, *de facto*, and *de jure* index definitions to confirm parameter stability and ensure coefficients remain robust to alternative specifications.

## Directory Structure
├── data/
│   └── README.md              # Data origin manual and source links
└── scripts/
    └── master_analysis.do     # Complete, annotated Stata execution routine

---
