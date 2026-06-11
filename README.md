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

- [`code/`](code/): R scraping script and Python analysis notebook.
- [`figures/`](figures/): Interactive HTML visualisations generated during the analysis.
- [`tables/`](tables/): Aggregated topic-level outputs and statistical result tables.
- [`documentation/`](documentation/): Additional documentation on topic labelling and analytical decisions.
- [`models/`](models/): Stored BERTopic model-related files.
- [`outputs/`](outputs/): Folder reserved for additional aggregated outputs, if applicable.

---

## Analysis Code

The analysis code is available in the [`code/`](code/) folder:

- [`01_data_scraping_R.R`](code/01_data_scraping_R.R): R script used for Reddit data extraction.
- [`02_master_thesis_analysis_code.ipynb`](code/02_master_thesis_analysis_code.ipynb): Main Python analysis notebook.

The main notebook includes the full analysis pipeline:

1. Data preparation and cleaning  
2. BERTopic topic modelling  
3. Topic interpretation and topic labelling  
4. Sentiment classification  
5. Emotion classification  
6. Visualisation of topic, sentiment, and emotion patterns  
7. Statistical analyses across topics  

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

## Supplementary Tables

Aggregated supplementary tables are available below:

- [Table 1: Corpus Descriptive Statistics](tables/table_01_corpus_descriptive_statistics.csv)
- [Table 2: Labelled Topic Summary](tables/table_02_topic_summary_labeled.csv)
- [Table 3: Topic Model Diagnostics](tables/table_03_topic_model_diagnostics.csv)
- [Table 4: Labelled Topic Similarity Matrix](tables/table_04_topic_similarity_matrix_labeled.csv)
- [Table 5: Overall Sentiment Summary](tables/table_05_sentiment_summary_overall.csv)
- [Table 6: Chi-Square Sentiment Summary](tables/table_06_chi_square_sentiment_summary.xlsx)
- [Table 7: Chi-Square Sentiment Observed Counts](tables/table_07_chi_square_sentiment_observed.xlsx)
- [Table 8: Chi-Square Sentiment Expected Counts](tables/table_08_chi_square_sentiment_expected.xlsx)
- [Table 9: ANOVA Results for Emotions](tables/table_09_anova_results_emotions.xlsx)
- [Table 10: Tukey Post-Hoc Results](tables/table_10_tukey_posthoc_results.xlsx)
- [Table 11: Emotion Correlation Matrix](tables/table_11_emotion_correlation_matrix.csv)

The tables are provided as supplementary material and do not contain raw Reddit post content.

---

## Supplementary Documentation

Additional documentation is available in the [`documentation/`](documentation/) folder:

- [Topic Labelling Process](documentation/topic_labeling_process)

This documentation describes the topic labelling process and supports transparency regarding the interpretation of BERTopic outputs.

---

## Model-Related Files

The stored BERTopic model files are available in the [`models/bertopic_model/`](models/bertopic_model/) folder:

- [`config.json`](models/bertopic_model/config.json)
- [`ctfidf.safetensors`](models/bertopic_model/ctfidf.safetensors)
- [`ctfidf_config.json`](models/bertopic_model/ctfidf_config.json)
- [`topic_embeddings.safetensors`](models/bertopic_model/topic_embeddings.safetensors)
- [`topics.json`](models/bertopic_model/topics.json)

These files are included to document the computational workflow and do not contain raw Reddit post content.

---

## Requirements

The analysis was conducted in Google Colab using Python 3.12.12.

If package requirements are provided, they are listed in:

- [`requirements.txt`](requirements.txt)

To install the required packages, use:

```bash
pip install -r requirements.txt
