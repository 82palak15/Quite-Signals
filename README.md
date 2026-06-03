# Quiet Signals
### A Systematic Quantitative Research Project on Nifty 50 (2010–2024)

---

## Overview

Quiet Signals is a structured quantitative research project that investigates 
one central question:

> **Can a systematic trader reliably extract returns from price data — 
> and what stops them?**

Each module builds directly on the findings of the previous one, forming a 
connected research arc rather than a collection of isolated exercises. The 
project progresses from basic trend detection through signal filtering, regime 
classification, and position sizing — mirroring how a professional quant 
researcher approaches strategy development.

All analysis is performed on **Nifty 50 daily price data (2010–2024)** using 
a consistent dataset across modules, allowing direct comparison of results.

---

## Project Structure
Quiet-Signals/
data/                              ← raw price data
module1_do_trends_exist/           ← trend detection
module2_can_rules_beat_market/     ← backtesting engine
module3_do_better_signals_help/    ← signal filtering
module4_does_market_regime_matter/ ← regime classification
module5_does_position_sizing_matter/ ← volatility scaling
module6_is_our_edge_real/          ← robustness validation (in progress)

Each module contains:
- `analysis.ipynb` — full notebook with hypothesis, code, charts, conclusion
- PNG charts generated from the analysis
- `README.md` or `schema.sql` where applicable

---

## Research Arc

| Module | Question | Key Tool | Finding |
|--------|----------|----------|---------|
| 1 | Do price trends exist? | SMA, Autocorrelation | Weak short-term momentum, mean reversion at 50-day horizon |
| 2 | Can simple rules profit from trends? | Backtesting, Sharpe ratio | Transaction costs destroy short-term edge; SMA 20/50 survives better |
| 3 | Do better signals reduce bad trades? | RSI filter | RSI confirmation fails on trending index — structural bias finding |
| 4 | Does market regime determine success? | ADX, PostgreSQL | Trending regimes yield higher return; ranging regimes yield smoother returns |
| 5 | Does position sizing matter? | ATR scaling, SQLite | Sharpe improved 0.70→0.86, drawdown reduced 29%→18% without changing signal |
| 6 | Is our edge real or overfitted? | Walk-forward testing | In progress |

---

## Key Results

### Module 2 — Backtesting
Total Return  Sharpe Ratio  Max Drawdown
Buy & Hold           3.52         0.71        -38.4%
SMA 10/20 net        0.72         0.40        -22.8%
SMA 20/50 net        1.84         0.70        -29.2%

**Finding:** Neither strategy beats buy-and-hold on total return. 
SMA 20/50 preserves capital better during crashes (-29% vs -38%).
Short-term strategies are disproportionately destroyed by transaction costs.

---

### Module 4 — Regime Analysis
Regime       Days   Strategy Sharpe   BnH Sharpe   Total Return
Trending     2424      0.62            0.56          0.679
Ranging       701      1.06            1.07          0.339

**Finding:** Trending regimes produce higher total returns. Ranging regimes 
produce smoother, lower-volatility returns with surprisingly high Sharpe. 
Nifty spends 67.7% of days in trending regime — structural characteristic 
of Indian equity markets.

---

### Module 5 — Position Sizing
 Total Return  Sharpe  Max Drawdown  Daily Vol
Buy & Hold                3.49      0.71     -38.4%        1.06%
SMA 20/50 Fixed           1.87      0.70     -29.2%        0.72%
SMA 20/50 Vol-Scaled      1.99      0.86     -18.0%        0.59%

**Finding:** Volatility-scaled sizing improved Sharpe by 0.155 and reduced 
maximum drawdown by 11 percentage points — without changing the underlying 
signal. Risk management at the position level contributed more to 
risk-adjusted performance than any signal modification across the project.

---

## Technical Stack

| Tool | Usage |
|------|-------|
| Python | Core analysis, strategy logic, visualisation |
| pandas, numpy | Data manipulation and computation |
| yfinance | Market data download |
| matplotlib, seaborn | Charts and visualisations |
| PostgreSQL + SQLAlchemy | Module 4 — regime-labelled data storage and SQL queries |
| SQLite | Module 5 — volatility bucket analysis via CASE WHEN SQL |
| Git + GitHub | Version control and project backup |

---

## Concepts Covered

`Efficient Market Hypothesis` · `Autocorrelation` · `Random Walk` · 
`SMA Crossover` · `Backtesting` · `Sharpe Ratio` · `Maximum Drawdown` · 
`Transaction Costs` · `RSI` · `Signal Confirmation` · `ADX` · 
`Market Regimes` · `ATR` · `Volatility Scaling` · `Position Sizing` · 
`Risk-Adjusted Returns` · `Walk-Forward Testing` · `Overfitting`

---

## Overarching Conclusion (so far)

> Simple trend-following rules on Nifty 50 do not reliably beat 
> buy-and-hold on total return. However, systematic strategies 
> offer meaningful advantages in **capital preservation** (lower drawdown) 
> and **risk-adjusted returns** (higher Sharpe) — particularly when combined 
> with volatility-aware position sizing. The most impactful improvement 
> across the project came not from better signals, but from better 
> risk management.

---

## Status

| Module | Status |
|--------|--------|
| Module 1 | Complete |
| Module 2 | Complete |
| Module 3 | Complete |
| Module 4 | Complete |
| Module 5 | Complete |
| Module 6 | In Progress |

---

## Author

**Palak Singh**  
