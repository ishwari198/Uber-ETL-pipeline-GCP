# Mage Data Analytics | Advanced Data Engineering GCP Project

## Overview

The objective of this project is to conduct data analytics on Mage Data using a range of tools and technologies, leveraging GCP Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.

## System Architecture 
![Architecture](architecture.jpg)

## Technologies Utilized
- Programming Language: Python

Google Cloud Platform Components:
1. Google Storage
2. Compute Instance 
3. BigQuery
4. Looker Studio

Modern Data Pipeline Tool - [Mage Data](https://www.mage.ai/)

Contribute to this open-source project - [Mage Data GitHub Repository](https://github.com/mage-ai/mage-ai)

## Dataset Information
TLC Trip Record Data for both Yellow and Green cabs.

---

## Setting Up GCP Instance

1. Download GCP Instance:
   - Go to Compute Engine.
   - Select `e2` and configure CPU settings.
   - Launch the `e2` machine and SSH into the instance.

2. Installing Mage:
   - Run the command to install Mage: `mage install`

3. Running the First Project:
   - Create a new project using: `mage start project uber-data-engineer`
   - Navigate to the VM and check the external IP.
   - Try running the UI using the external IP.
   - If not working, create a new firewall rule for the group `access_mage` with IPv4 address `0.0.0.0/0`.

4. Working in the UI:
   - Create a data loader and transformer in the UI.
  
  ## Connecting to BigQuery

1. Update `io.config.yaml`:
   - Go to Google Cloud Console.
   - Navigate to Service & API and create credentials for the service account.
   - Create a service key in JSON format and update `io.config.yaml` with the credentials.

2. Install Google Cloud Libraries:
   ```bash
   sudo pip3 install google-cloud
   sudo pip3 install google-cloud-bigquery
     

