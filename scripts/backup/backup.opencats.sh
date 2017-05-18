# 
PROJECT=opencats
CONTAINER_ID=6773
TIMESTAMP=`date +'%y%d%m_%H%M%S'`
#DIR="${PROJECT}_${TIMESTAMP}"
DIR=${PROJECT}/${TIMESTAMP}
echo "Copying to directory ${PROJECT}_${TIMESTAMP}"
mkdir -p ${DIR}
docker exec -t ${CONTAINER_ID}  sh -c 'exec mysqldump --all-databases -uroot -p"toor"' > ./${DIR}/${PROJECT}-all-databases.sql
#docker exec -it ${CONTAINER_ID}  /bin/bash
docker cp ${CONTAINER_ID}:/var/www/html/opencats/attachments ./${DIR}/attachments
