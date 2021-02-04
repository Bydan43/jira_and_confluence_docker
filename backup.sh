USER=`cat list | awk '(NR == 1)'`
PASSWORD=`cat list | awk '(NR == 2)'`
OUTPUT=`cat list | awk '(NR == 3)'`
HOST=`cat list | awk '(NR == 4)'`
 
mysqldump -u $USER -p$PASSWORD -h$HOST --single-transaction --triggers --routines --compress conflluence | gzip > $OUTPUT/conflluence_`date +%Y%m%d`.sql.gz
mysqldump -u $USER -p$PASSWORD -h$HOST --single-transaction --triggers --routines --compress servicesdesk | gzip > $OUTPUT/servicesdesk_`date +%Y%m%d`.sql.gz
cd /home/jira/backup_jira
tar -zcvf jirasd-data_`date +%Y%m%d`.tar.gz /home/jira/jira_and_confluence/jirasd-data
tar -zcvf confluence-data_`date +%Y%m%d`.tar.gz /home/jira/jira_and_confluence/confluence-data