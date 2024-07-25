# TopBJets

# Release: CMSSW_10_6_X

Crab setup\ \
source crab3_env.sh\
export X509_USER_PROXY=/tmp/x509up_u752608 (given by voms-proxy-info)\
source json_production.sh #prepare JSON containing input datasets\
crab3_submit.py -p ../test/crab3/production/* --Tier2 T2_US_Purdue\
crab3_localarea.py --mask-data (check crab3_localarea.py to rename data directory as required)\
crab3_monitor.py -t crab_*\
crab3_monitor.py -t crab_* --hadd -p production/* --Tier2-prepath /eos/purdue --Tier2-prefix davs://eos.cms.rcac.purdue.edu:9000\
crab report -d crab*\

#Analysis scripts
#- source setup.sh 
#- cd macros/slurm/
#- source run2017/analysisminitree.sh
#- source run2018/analysisminitree.sh
#- source analysiscripthist.sh
