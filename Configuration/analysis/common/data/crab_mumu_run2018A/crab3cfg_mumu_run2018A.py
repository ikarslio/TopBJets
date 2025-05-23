from WMCore.Configuration import Configuration

config = Configuration()

config.section_('General')
config.General.requestName     = 'mumu_run2018A'
config.General.transferOutputs = True
config.General.transferLogs    = False

config.section_('JobType')
config.JobType.pluginName  = 'Analysis'
config.JobType.allowUndistributedCMSSW = True 
config.JobType.psetName = '/depot/cms/top/chawla19/Topbjets/CMSSW_10_6_32/src/TopBJets/Configuration/analysis/common/test/ConfFile_cfg_2018_Data.py'
config.JobType.maxMemoryMB = 2500
config.JobType.pyCfgParams = ['era=2018', 'samplename=data', 'mode=mumu', 'datasetName=DoubleMuon', 'outputFile=mumu_run2018A.root']
config.JobType.allowUndistributedCMSSW = True

config.section_('User')

config.section_('Site')
config.Site.storageSite = 'T2_US_Purdue'

config.section_('Data')
config.Data.publication    = False
config.Data.ignoreLocality = False
config.Data.splitting = 'LumiBased'
config.Data.lumiMask = '/depot/cms/top/chawla19/Topbjets/CMSSW_10_6_32/src/TopBJets/Configuration/python/Data/Run2018/Cert_314472-325175_13TeV_Legacy2018_Collisions18_JSON.txt'
config.Data.inputDataset = '/DoubleMuon/Run2018A-UL2018_MiniAODv2-v1/MINIAOD'
config.Data.outLFNDirBase = '/store/user/rchawla/crab/20230731/mumu_run2018A'
config.Data.unitsPerJob = 100
