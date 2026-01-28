Project: LLM Evaluation Coverage Analysis

Overview
This project uses SQL to analyze evaluation coverage for an LLM. 
The goal is to identify prompts and their categories with little or no evaluation data.
This uncovers blind spots or biases in a downstream analysis.

Dataset
The dataset is simulated prompt metadata and evaluation records commonly fond in AI evaluation workflows. 
The intentional gaps included demonstrate how LEFT JOIN can be used to surface missing data.

Analysis Approach
- Analysis anchored on prompt metadata
- LEFT JOIN used to retain prompts with no evaluations
- Aggregated evaluation counts by prompt version
- Sorted results to highlight coverage gaps

Key Insight
Some prompt versions have less evaluation coverage, including cases with zero evaluations.
Before drawing conclusions about prompt quality or performance, these gaps should be addressed.

Why This Matters
Incomplate evaluation coverage can skew analysis and may lead teams to over-optimize areas that may simply be over-sampled. 
