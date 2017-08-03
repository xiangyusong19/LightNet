clear all;
addpath(genpath('../CoreModules'));
n_epoch=30;
dataset_name='cifar';
network_name='cnn';
use_gpu=1%use gpu or not 
opts.use_nntoolbox=1 %Requires Neural Network Toolbox to use it.
%function handle to prepare your data
PrepareDataFunc=@PrepareData_CIFAR_CNN;
%function handle to initialize the network
NetInit=@net_init_cifar_cnn;

%automatically select learning rates
use_selective_sgd=1;
%select a new learning rate every n epochs
ssgd_search_freq=10;
learning_method=@sgd;%training method: @sgd,@adagrad,@rmsprop,@adam,@sgd2

sgd_lr=1e-3;

Main_Template(); %call training template
