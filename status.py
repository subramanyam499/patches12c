#!/u01/app/oracle/may23/middleware/oracle_common/common/bin/wlst.sh
print "---"*40
print " \t\t\t\t\t\tServers Status "
print "---"*40
connect('weblogic','weblogic1','t3://192.168.43.44:7001')
x=ls('Servers',returnMap='true')
for i in x: state(i,'Server')
print "---"*40

