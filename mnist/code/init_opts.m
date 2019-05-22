function opts = init_opts()
opts=struct(	'expDir'	,	'./output/trial', ...
    'batchSize'	,	100, ...
    'numEpochs'	,	1, ...
    'learningRate'	,	0.1, ...
    'momentum'	,	0,  ...
    'weightDecay'	,	0, ...
    'saveMomentum'	,	true, ...
    'randomSeed'	,	0,  ...
    'backPropDepth'	,	+inf,  ...
    'errorFunction'	,	'multiclass',  ...
    'continue'  	,	true, ...
    'conserveMemory',	true, ...
    'networkType'  	,	'simplenn',  ...
    'train'		,	[], ...
    'val'		,	[], ...
    'errorLabels'   ,	{{}},  ...
    'plotDiagnostics',	false,  ...
    'plotStatistics',	false, ...
    'profile'	,	true,  ...
    'flip'		,	false, ...
    'gpus'		, 	[], ...
    'epochSize'	,	inf, ...
    'prefetch'	,       true, ...
    'solver'	,	[], ...
    'numSubBatches'	,	1, ...
    'saveSolverState',	true, ...
    'nesterovUpdate',	false, ...
    'parameterServer', struct('method','mmap','prefix','mcn'), ...
    'memoryMapFile'	,	fullfile(tempdir, 'matconvnet.bin'), ...
    'sync'		,	true, ...
    'cudnn'		,	true, ...
    'postEpochFn'	,	[] );
    
end