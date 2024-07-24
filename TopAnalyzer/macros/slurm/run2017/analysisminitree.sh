# Create directories when running for the first time
# Create 'prepareslurmscript.sh' when running for the first time
# Update prepareslurmscript.sh before running
# Copy MkcmsSlurmJobs.py and slurmscriptrun.sh when running for the first time
# Update the current working directory in MkcmsSlurmJobs.py - L83
# Run below commands either first time or if there is a change in slurmscriptrun.sh
#rm -r cmsSlurmJobs/
#python MkcmsSlurmJobs.py slurmscriptrun.sh
find . -name \run2017*_data*.root -type f -delete
sed -i 's+20230731+20230731+g' */prepareslurmscript.sh
cd DoubleEG && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp DoubleEG/outfiles1/MiniTree1.C MuonEG/outfiles1 && cd MuonEG && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp DoubleEG/outfiles1/MiniTree1.C DoubleMuon/outfiles1 && cd DoubleMuon && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp DoubleEG/outfiles1/MiniTree1.C SingleElectron/outfiles1 && cd SingleElectron && sed -i 's+dilepton = true, singlelepton = false+dilepton = false, singlelepton = true+g' outfiles1/MiniTree1.C && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp DoubleEG/outfiles1/MiniTree1.C SingleMuon/outfiles1 && cd SingleMuon && sed -i 's+dilepton = true, singlelepton = false+dilepton = false, singlelepton = true+g' outfiles1/MiniTree1.C && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
