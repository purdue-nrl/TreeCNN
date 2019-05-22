function net = gen_model_B(output_nodes)

lr = [2 0] ; %layer-wise learning factor for filter weights and biases 
net.layers = {} ;
%Block 1

net.layers{end+1} = struct('type', 'conv', ...
                           'weights', {{0.05*randn(5,5,1,32, 'single'), zeros(1,32,'single')}}, ...
                           'learningRate', lr, ...
                           'stride', 1, ...
                           'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'pool', ...
                           'method', 'avg', ...
                           'pool', [2 2], ...
                           'stride', 2, ...
                           'pad', 0) ; 
% Fully connected layers
net.layers{end+1} = struct('type', 'conv', ...
                           'weights', {{0.05*randn(12,12,32,output_nodes, 'single'), zeros(1,output_nodes,'single')}}, ...
                           'learningRate', 0.1*lr, ...
                           'stride', 1, ...
                           'pad', 0) ;
% Loss layer
net.layers{end+1} = struct('type', 'softmaxloss') ;

% Meta parameters
N = 50;
net.meta.inputSize = [28 28 1] ;
net.meta.trainOpts.learningRate = 0.5*ones(1,N) ;
net.meta.trainOpts.weightDecay = 0 ;
net.meta.trainOpts.batchSize =  N ;
net.meta.trainOpts.numEpochs = numel(net.meta.trainOpts.learningRate) ;

net = vl_simplenn_tidy(net) ;