#!/bin/bash
PATCH_DOWNLOAD=/u01/app/oracle/may23/middleware/patches
ORACLE_HOME=/u01/app/oracle/may23/middleware
PATCHPATH=/u01/app/oracle/may23/middleware/target_patch
LOG=/u01/app/oracle/may23/middleware/cfgtoollogs/opatch
cp $PATCH_DOWNLOAD/*Generic.zip $PATCHPATH
rm -f $LOG/opatch`date +%Y-%m-%d_%H`*.log
$ORACLE_HOME/OPatch/opatch lsinventory
DATE=`date +%Y-%m-%d_%H`
cd  $PATCHPATH
for j in `ls p*_Generic.zip`
do
unzip $j
done
cd  $PATCHPATH
for i in *
do
x=`cat $LOG/opatch$DATE*.log |grep $i`
if [ -z "$x" ]
then
echo " Patch not applied and applying the patch"
$ORACLE_HOME/OPatch/opatch apply $i -silent
else
echo " $i Patch has already applied, so not applying the $i patch"
fi
done

