function New-AmoebaMLPipelineTrainer {
    [CmdletBinding()]
    param(
        [ValidateSet(
            "AveragedPerceptronBinaryClassifier",
            "BinaryLogisticRegressor",
            "Bundle",
            "FastForestBinaryClassifier",
            "FastForestRegressor",
            "BoostedTreeArgsOptimizationAlgorithmType",
            "FastTreeBinaryClassifier",
            "FastTreeRanker",
            "FastTreeRegressor",
            "FastTreeTweedieRegressor",
            "GeneralizedAdditiveModelBinaryClassifier",
            "GeneralizedAdditiveModelRegressor",
            "LinearSvmBinaryClassifier",
            "LogisticRegressor",
            "NaiveBayesClassifier",
            "OnlineGradientDescentRegressor",
            "OrdinaryLeastSquaresRegressor",
            "PoissonRegressor",
            "StochasticDualCoordinateAscentBinaryClassifier",
            "StochasticDualCoordinateAscentClassifier",
            "StochasticDualCoordinateAscentRegressor",
            "StochasticGradientDescentBinaryClassifier"
        )][String]$Type
    )
    return new-object "Microsoft.ML.Trainers.$Type"
}

