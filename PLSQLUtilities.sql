
/* Create Oracle JOB */
begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_NAME',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'PROCEDURE_NAME',
                                start_date          => to_date('14-09-2014 00:00:00', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     => 'FREQ=DAILY;BYDAY=MON,TUE,WED,THU,FRI;BYHOUR=12,5;BYMINUTE=30;BYSECOND=0',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/


/* RUN ORACLE JOB */
BEGIN

    SYS.DBMS_SCHEDULER.RUN_JOB('JOB_NAME');
    COMMIT;

END;
/

