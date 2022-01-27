# python3 -m mimic3benchmark.scripts.split_train_and_test data/in-hospital-mortality
python3 -m mimic3models.split_train_val data/in-hospital-mortality
python3 -um mimic3models.in_hospital_mortality.main --network mimic3models/keras_models/lstm.py --dim 16 --timestep 1.0 --depth 2 --dropout 0.3 --mode train --batch_size 8 --output_dir mimic3models/in_hospital_mortality
