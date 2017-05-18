# 
PROJECT=odoo
CONTAINER_ID=ded3a8338c57
TIMESTAMP=`date +'%y%d%m_%H%M%S'`
DIR="${PROJECT}/${TIMESTAMP}"
echo "Copying to directory ${PROJECT}_${TIMESTAMP}"
mkdir -p ${DIR}
docker exec -t ${CONTAINER_ID} pg_dumpall -c -U postgres > ${DIR}/${PROJECT}_dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
#docker exec -t ${CONTAINER_ID} sh -c 'exec mysqldump --all-databases -uroot -p"toor"' > ./${DIR}/${PROJECT}-all-databases.sql
#docker exec -it ${CONTAINER_ID} /bin/bash
#docker cp ${CONTAINER_ID}:/var/www/html/opencats/attachments ./${DIR}/attachments
