CREATE TABLE `batches` (
   `ID` bigint(20) NOT NULL AUTO_INCREMENT,
   `BATCH_ID` varchar(255) DEFAULT NULL,
   `REQUEST_ID` varchar(255) DEFAULT NULL,
   `REQUEST_FILE` varchar(255) DEFAULT NULL,
   `TOTAL_TRANSACTIONS` bigint(20) DEFAULT NULL,
   `ONGOING` bigint(20) DEFAULT NULL,
   `FAILED` bigint(20) DEFAULT NULL,
   `COMPLETED` bigint(20) DEFAULT NULL,
   `RESULT_FILE` varchar(255) DEFAULT NULL,
   `RESULT_GENERATED_AT` datetime DEFAULT NULL,
   `NOTE` varchar(255) DEFAULT NULL,
   `WORKFLOW_INSTANCE_KEY` bigint(20) DEFAULT NULL,
   `WORKFLOW_KEY` bigint(20) DEFAULT NULL,
   `STARTED_AT` datetime DEFAULT NULL,
   `COMPLETED_AT` datetime DEFAULT NULL,
   PRIMARY KEY (`ID`),
   KEY `idx_batches_key` (`WORKFLOW_INSTANCE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `transfers`
    ADD `ERROR_INFORMATION` longtext DEFAULT NULL,
    ADD `BATCH_ID` varchar(255) DEFAULT NULL;