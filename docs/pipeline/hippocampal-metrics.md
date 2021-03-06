---
layout: default
title: Hippocampal metrics
parent: Processing pipeline
nav_order: 7
---
# Hippocampal and spatial metrics (draft)
{: .no_toc}
Hippocampal and spatial metrics depends on specific files and metadata to be processed the pipeline.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Theta metrics
A theta-band filtered time series is generated from the lfp file. Continues theta power and phase is then calculated from the generated time series. For each unit the average theta firing profile is calculated together with the theta phase peak/trough and the strength of the theta entrainment. [Learn more about theta oscillation metrics](/Cell-Explorer/datastructure/standard-cell-metrics/#theta-oscillation-metrics). The tracking file is used for filtering by a minimum running speed.

| Files        | Description  |
|:-------------|:-------------|
| `sessionName.lfp` | LFP file |
| `sessionName.InstantaneousTheta.channelInfo.mat` | theta filtered channel |
| `sessionName.animal.behavior.mat` | behavioral tracking file |

| Metadata parameter | Description |
|:-------------|:-----------|
| `session.channelTags.Theta.channels`| Theta channel tag (required) |

## Spatial metrics
All spatial metrics are generated from an existing 1D firing rate map. [Learn more about spatial metrics](/Cell-Explorer/pipeline/standard-cell-metrics/#spatial-metrics) and the [firing rate map Matlab struct](/Cell-Explorer/datastructure/data-structure-and-format/#firing-rate-maps). 

| Files        | Description |
|:-------------|:------------|
| `firingRateMaps.firingRateMap.mat` | 1D firing rate map | 

## Deep-superficial metrics
Deep-superficial metrics are calculated from ripple timestamps and the average ripple is extracted from a channel from the lfp file. A reveral point for the polarity of the sharp wave is derived from a time interval before the average ripple, aligned to their peaks. Deep-superficial distance is estimmated from the reversal point by assigning a numeric value determined from the channel offset to the reversal point.

[Learn more about deep-superficial metrics](https://petersenpeter.github.io/Cell-Explorer/datastructure/standard-cell-metrics/#sharp-wave-ripple-metrics).

| Files        | Description |
|:-------------|:------------|
| `sessionName.lfp` | LFP file |
| `sessionName.ripples.events.mat` | Ripples events | 


| Metadata parameter | Description |
|:-------------|:-----------|
| `session.channelTags.Ripple.channels`| Ripple channel tag (required) |
| `session.analysisTags.probesLayout`| Ripple channel tag (required; linear,staggered,poly2, edge,poly3,poly5)|
| `session.analysisTags.probesVerticalSpacing`| Vertical spacing between sites (required, [µm]) |
| `session.channelTags.Bad.channels` | Bad channels |
| `session.channelTags.Cortical.electrodeGroups`| Cortical spike groups |
| `session.channelTags.Bad.electrodeGroups`| Bad electrode groups (e.g. broken shanks) |

