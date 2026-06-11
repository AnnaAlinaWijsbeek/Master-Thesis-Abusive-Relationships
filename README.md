# Supplementary Materials – Master Thesis

This repository contains supplementary materials for the master thesis:

**Text Mining Reddit Narratives of Abusive Relationships: Topics and Emotion Patterns in Online Peer Support**

Author: Anna Alina Wijsbeek
University of Twente
Master's programme: Positive Clinical Psychology and Technology
July 2026

## Overview

This study analysed publicly available Reddit posts from r/abusiverelationships using transformer-based text mining methods. The analysis included BERTopic topic modelling, transformer-based sentiment analysis, transformer-based emotion classification, visualisation, and statistical comparisons of affective patterns across topics.

The repository provides the analysis code and supplementary materials used to support the reported findings. The raw Reddit data are not included.

## Repository Structure

* `code/master_thesis_analysis_code.ipynb`: Main analysis notebook used for data preprocessing, BERTopic topic modelling, topic interpretation, sentiment analysis, emotion classification, visualisation, and statistical analysis.
* `requirements.txt`: Python package requirements for running the analysis notebook.
* `figures/`: Supplementary visualisations generated during the analysis.
* `tables/`: Aggregated topic-level outputs and statistical result tables.
* `outputs/`: Additional aggregated model outputs generated during the analysis.
* `documentation/`: Additional documentation on model configuration, topic labelling, and ethical data handling.

## Ethical Data Handling

This repository does not include raw Reddit data, usernames, Reddit URLs, or verbatim post texts. Only analysis code, aggregated outputs, topic-level summaries, statistical results, and supplementary visualisations are provided.

This decision was made to reduce the risk of user re-identification and to remain consistent with the ethical approach of the thesis, in which results are reported in aggregate form and direct quotations from Reddit posts are avoided.

## Software and Models

Topic modelling was conducted using BERTopic. The topic modelling pipeline included Sentence-BERT embeddings, dimensionality reduction with UMAP, density-based clustering with HDBSCAN, vectorisation with CountVectorizer, and topic representation with c-TF-IDF and KeyBERT-inspired representations.

Sentiment and emotion classification were conducted using transformer-based models from CardiffNLP. Statistical analyses were conducted to compare sentiment and emotion patterns across the identified topic clusters.

The required Python packages are listed in `requirements.txt`.

## Data Availability

The Reddit data analysed in this thesis are not shared in this repository. This includes raw post texts, post titles, Reddit URLs, usernames, and representative documents.

The repository is therefore intended to document the analytical workflow and provide supplementary aggregated materials, rather than to make the original dataset publicly available.

## Citation

If referring to this repository, please cite the corresponding master thesis.

## License

This repository is licensed under the MIT License. The license applies to the code in this repository.

