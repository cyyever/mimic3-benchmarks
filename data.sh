mkdir -p data
python3 -m mimic3benchmark.scripts.extract_subjects /home/cyy/mimic3/mimic-iii-clinical-database-1.4 data/root
python3 -m mimic3benchmark.scripts.validate_events data/root
python3 -m mimic3benchmark.scripts.extract_episodes_from_subjects data/root/
python3 -m mimic3benchmark.scripts.split_train_and_test data/root/
python3 -m mimic3benchmark.scripts.create_in_hospital_mortality data/root/ data/in-hospital-mortality/
python3 -m mimic3benchmark.scripts.create_decompensation data/root/ data/decompensation/
python3 -m mimic3benchmark.scripts.create_length_of_stay data/root/ data/length-of-stay/
python3 -m mimic3benchmark.scripts.create_phenotyping data/root/ data/phenotyping/
python3 -m mimic3benchmark.scripts.create_multitask data/root/ data/multitask/
