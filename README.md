# TopBJets

## Release: CMSSW\_10\_6\_X

### Crab setup
* cd TopBJets/tree/main/Configuration/analysis/common/test/crab3
* source crab3_env.sh
* export X509_USER_PROXY=/tmp/x509up_u752608 <given by voms-proxy-info>
* source json_production.sh <prepare JSON containing input datasets>
* crab3_submit.py -p production/* --Tier2 T2_US_Purdue
* cd ../../
* crab3_localarea.py --mask-data <check crab3_localarea.py to rename data directory as required>
* crab3_monitor.py -t crab_* --hadd -p production/* --Tier2-prepath /eos/purdue --Tier2-prefix davs://eos.cms.rcac.purdue.edu:9000
