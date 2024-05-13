epicsEnvSet("STREAM_PROTOCOL_PATH", "protocol")

dbLoadDatabase("dbd/ioc.dbd",0,0)
ioc_registerRecordDeviceDriver(pdbbase) 

dbLoadRecords("db/caen-easy-driver-1020.db")
dbLoadRecords("db/caen-fast-ps-1040-400.db")

devEasyDriverConfigure("VSC", "10.2.2.144:10001", 0,0)   # vsc
devEasyDriverConfigure("HLC", "10.2.2.142:10001", 0,0)   # hlc
devEasyDriverConfigure("HSC", "10.2.2.143:10001", 0,0)   # hsc
devEasyDriverConfigure("SQC", "10.2.2.145:10001", 0,0)   # scq
drvAsynIPPortConfigure("VLC", "10.2.2.146:10001", 0,0,0) # vlc (fast-ps)

iocInit()

