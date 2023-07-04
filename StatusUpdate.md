# Steps followed to train and evaluate seq2seq_attn model

- Downloaded the pickle files from [Box-Link](https://uofi.app.box.com/s/pwm7gr71hncqbtyscy9quyd446j19ydx)
and put in under [Shared](shared) folder - This is shared by Kranti(the Paper author)

# Problems with Vocabulary/Dataset

- When we tried to run the following command under the python folder, we got an error **"Vocabulary and dataset should be cased the same way."** 
    
- `python trainer.py seq2seq_attn ../config/seq2seq_attn/hyperparameters-1.config`
- Because of the errors with the vocabulary and dataset, we tried to put hyperparameter
`--load_dataset   False` and try to generate the **pickle files** from the [data](data) folder and store it under [SAVED_CWC_DATASET](data/saved_cwc_datasets)
- Due to errors, we then never used the dataset provided by Kranti under [Box-Link](https://uofi.app.box.com/s/pwm7gr71hncqbtyscy9quyd446j19ydx) and used the one, we generated [SAVED_CWC_DATASET](data/saved_cwc_datasets).
- In few files such as train.py,trainer.py, data_loader.py and model.py, we changed the path for the dataset under the 
variable/hyperparameter name`--saved_dataset_dir - To read data from stored under the folder [saved_cwc_dataset]`


# Link for the datasets we trained on our machines 

- [Our own datsets](https://we.tl/t-qu4jQVGQqr)

# Models trained

- We started with training the model `seq2seq_attn` [seq2seq model](python/seq2seq_attn/model.py) and also evaluated this and the results of these are under
[Models Folder](models) - ATTENTION - This folder is not pushed on GitHub - one needs to run the generate commands in order to see the results or see below 
the results separately

# Results of models trained

- [Results of models we trained](https://we.tl/t-vqkEOShL9z)

# Current stage

- We want to train the `seq2seq_all_inputs` Model, but we always end up in error about `hidden_size` , `linear_size` etc.

