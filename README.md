# Master-Thesis-Abusive-Relationships

## Supplementary Materials – Master Thesis

This repository contains supplementary materials for the master thesis:

**Text Mining Reddit Narratives of Abusive Relationships: Topics and Emotion Patterns in Online Peer Support**

Author: Anna Alina Wijsbeek  
University of Twente  
Master’s programme: Positive Clinical Psychology and Technology  
July 2026

---

## Overview

This study analysed publicly available Reddit posts from r/abusiverelationships using transformer-based text mining methods. The analysis included BERTopic topic modelling, transformer-based sentiment analysis, transformer-based emotion classification, visualisation, and statistical comparisons of affective patterns across topics.

The repository provides the analysis code and supplementary materials used to support the reported findings. The raw Reddit data are not included.

---

## Repository Structure

- `code/master_thesis_analysis_code.ipynb`: Main analysis notebook used for data preprocessing, BERTopic topic modelling, topic interpretation, sentiment analysis, emotion classification, visualisation, and statistical analysis.
- `requirements.txt`: Python package requirements for running the analysis notebook.
- `figures/`: Supplementary visualisations generated during the analysis.
- `tables/`: Aggregated topic-level outputs and statistical result tables.
- `outputs/`: Additional aggregated model outputs generated during the analysis.
- `documentation/`: Additional documentation on model configuration, topic labelling, and ethical data handling.
- `models/`: Model-related output files, if applicable.

---

## Interactive Figures

Interactive HTML versions of the figures are available below:

- [Figure 1: Topic Document Counts](figures/figure_01_topic_document_counts.html)
- [Figure 2: Topic Term Barchart](figures/figure_02_topic_term_barchart.html)
- [Figure 3: Intertopic Distance Map](figures/figure_03_intertopic_distance_map.html)
- [Figure 4: Topic Similarity Matrix](figures/figure_04_topic_similarity_matrix.html)
- [Figure 5: Topic Hierarchy](figures/figure_05_topic_hierarchy.html)
- [Figure 6: Topic Term Rank Decline](figures/figure_06_topic_term_rank_decline.html)
- [Figure 7: Sentiment Mean Probabilities](figures/figure_07_sentiment_mean_probabilities.html)
- [Figure 8: Sentiment Distribution](figures/figure_08_sentiment_distribution.html)
- [Figure 9: Emotion Topic Heatmap](figures/figure_09_emotion_topic_heatmap.html)
- [Figure 10: Dominant Emotion per Topic](figures/figure_10_dominant_emotion_per_topic.html)
- [Figure 11: Emotion Correlation Heatmap](figures/figure_11_emotion_correlation_heatmap.html)

---

## Tables

The `tables/` folder contains aggregated tables used to support the reported results, including topic-level summaries, sentiment outputs, emotion outputs, and statistical test results.

The tables are provided as supplementary material and do not contain raw Reddit post content.

---

## Analysis Code

The main analysis notebook is available in the `code/` folder:

- [`master_thesis_analysis_code.ipynb`](code/master_thesis_analysis_code.ipynb)

The notebook includes the full analysis pipeline:

1. Data preparation and cleaning  
2. BERTopic topic modelling  
3. Topic interpretation and topic labelling  
4. Sentiment classification  
5. Emotion classification  
6. Visualisation of topic, sentiment, and emotion patterns  
7. Statistical analyses across topics  

---

## Requirements

The Python package requirements are listed in:

- [`requirements.txt`](requirements.txt)

To install the required packages, use:

```bash
pip install -r requirements.txt
