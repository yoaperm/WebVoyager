# Megatron: Enhancing WebVoyager for Thai E-commerce

This repository contains the code and data for our project, which builds upon the WebVoyager framework to create and evaluate web agents specifically tailored for the Thai E-commerce domain.

## Overview

Our project aims to address the limitations of existing web agents when applied to the unique characteristics of Thai E-commerce platforms like NocNoc and Shopee. We have:

*   Designed new, more realistic task types (Best Deal, Personalization).
*   Enhanced the agent architecture with a Reflection Step for improved robustness.
*   Developed a multi-aspect evaluation framework for more granular performance analysis.

## File Structure

Here's a brief overview of the key directories and files:

```
.
├── assets/                    # Images and icons for the README
├── data/                       # Datasets
│   ├── Amazon_Baseline.jsonl    # WebVoyager's original Amazon tasks (for baseline)
│   ├── GAIA_Reference_Answer.jsonl # GAIA dataset info
│   ├── GAIA_web.jsonl           # GAIA dataset tasks
│   ├── Megatron_Data.jsonl        # Main data file (likely combined data)
│   ├── Personalize_Data.jsonl     # Personalization tasks (NocNoc/Shopee)
│   ├── Recommend_th_ecomm_data.jsonl # Another dataset file for Thai E-commerce
│   ├── Recommend_th_ecomm_reference_...jsonl # Reference answers for Thai E-commerce tasks
│   └── WebVoyager_Data.jsonl      # WebVoyager's original dataset
├── evaluation/               # Evaluation-related files
│   ├── evaluation_multi_eval_1.md # LLM-as-Judge output (Multi-Aspect)
│   ├── evaluation_multi_eval_2.md # ...more LLM-as-Judge output
│   ├── evaluation_multi_eval_3.md # ...
│   ├── evaluation_single_eval_1.md # LLM-as-Judge output (Single-Aspect)
│   ├── evaluation_single_eval_2.md # ...more LLM-as-Judge output
│   ├── evaluation_single_eval_3.md # ...
│   ├── Human_Evaluation.xlsx        # Human evaluation data (Eyeball)
│   ├── Megatron_auto_multi_eval.py # Python script for multi-aspect auto-evaluation
│   ├── Megatron_Result_Summary.xlsx # (Likely) Summary of results
│   ├── overall_multi.md           # (Likely) Overall multi-aspect results
│   ├── overall_single.md          # (Likely) Overall single-aspect results
│   ├── run_multi_eval.sh          # Script to run multi-aspect auto-evaluation
│   ├── run_single_eval.sh         # Script to run single-aspect auto-evaluation
│   └── WebVoyager_auto_single_eval....py # Original WebVoyager auto-eval script
├── log/                        # Log files
├── results/                    # Results of agent runs
│   ├── examples/                # Example results
│   └── megatron_nocnoc/         # Results specific to NocNoc tasks
├── .gitignore
├── LICENSE
├── Megatron_README.md        # This file!
├── prompts.py                # Contains prompts for the LLM agent
├── requirements.txt          # Python dependencies
├── run.py                    # Main script to run the web agent
├── run.sh                    # Script to run the web agent
├── Task_Plan.xlsx            # (Likely) Task planning document
├── utils_webarena.py         # Utility functions (likely from WebArena)
└── utils.py                  # Utility functions
```

## Running the Code

### Running the Web Agent

To run the web agent with a specific task:

```bash
bash run.sh
```

This script executes `run.py` with pre-defined parameters. You may need to modify `run.sh` to adjust parameters such as the task file, API key, or headless mode.

### Running Evaluations

#### Single-Aspect Evaluation (WebVoyager's Original Method)

To run the single-aspect auto-evaluation (using the original WebVoyager approach):

```bash
bash evaluation/run_single_eval.sh
```

#### Multi-Aspect Evaluation (Our Enhanced Method)

To run the multi-aspect auto-evaluation (using our proposed aspects):

```bash
bash evaluation/run_multi_eval.sh
```

The output of these evaluation scripts will be saved in the `evaluation/` directory.

## Data and Evaluation

### Human Evaluation Data

The results of our human "eyeball" evaluations, including both single-aspect and multi-aspect assessments, are stored in:

```
evaluation/Human_Evaluation.xlsx
```

### LLM-as-a-Judge Evaluation Results

The output of the LLM-as-a-Judge evaluations (both single-aspect and multi-aspect) can be found in the `evaluation/` directory. Look for files named:

*   `evaluation_single_eval_*.md`: (WEBVOYAGER METHOD) Results from the single-aspect auto-evaluation.
*   `evaluation_multi_eval_*.md`: (MEGATRON METHOD) Results from the multi-aspect auto-evaluation.

## Project Organization & Contributions

This project builds upon the WebVoyager framework to address the challenges of applying LLM-based web agents to the Thai E-commerce domain. Our key contributions include:

*   **New Task Design:** Creation of realistic "Best Deal" and "Personalization" tasks for Thai E-commerce platforms.
*   **Agent Enhancement:** Implementation of a "Reflection Step" to improve agent robustness and efficiency.
*   **Multi-Aspect Evaluation:** Development of a novel evaluation framework to provide deeper insights into agent performance.

This `README.md` provides a starting point for understanding and running the code. Please refer to the code comments and other documentation for more details.