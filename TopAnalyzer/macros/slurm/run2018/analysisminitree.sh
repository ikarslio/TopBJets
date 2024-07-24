# Create directories when running for the first time
# Create 'prepareslurmscript.sh' when running for the first time
# Update prepareslurmscript.sh if running on new CRAB input
# Copy MkcmsSlurmJobs.py and slurmscriptrun.sh when running for the first time
# Update the current working directory in MkcmsSlurmJobs.py - L83 if needed
# Run below commands either first time or if there is a change in slurmscriptrun.sh
#rm -r cmsSlurmJobs/
#python MkcmsSlurmJobs.py slurmscriptrun.sh
find . -name \run2018*_data*.root -type f -delete
sed -i 's+20230523+20230731+g' */prepareslurmscript.sh
cd EGamma && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp EGamma/outfiles1/MiniTree1.C MuonEG/outfiles1 && cd MuonEG && sed -i 's+dilepton = false, singlelepton = true+dilepton = true, singlelepton = false+g' outfiles1/MiniTree1.C && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp EGamma/outfiles1/MiniTree1.C DoubleMuon/outfiles1 && cd DoubleMuon && sed -i 's+dilepton = false, singlelepton = true+dilepton = true, singlelepton = false+g' outfiles1/MiniTree1.C && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
cp EGamma/outfiles1/MiniTree1.C SingleMuon/outfiles1 && cd SingleMuon && source prepareslurmscript.sh && source RuncmsSlurm_slurmscriptrun.sh && cd ..
