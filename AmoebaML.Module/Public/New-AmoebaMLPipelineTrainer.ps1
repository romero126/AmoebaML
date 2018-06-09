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
    switch ($Type) {
        "AveragedPerceptronBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.AveragedPerceptronBinaryClassifier]::new()
        }
        "BinaryLogisticRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.BinaryLogisticRegressor]::new()
        }
        "FastForestBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastForestBinaryClassifier]::new()
        }
        "FastForestRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastForestRegressor]::new()
        }
        "FastTreeBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastTreeBinaryClassifier]::new()
        }
        "FastTreeRanker" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastTreeRanker]::new()
        }
        "FastTreeRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastTreeRegressor]::new()
        }
        "FastTreeTweedieRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.FastTreeTweedieRegressor]::new()
        }
        "GeneralizedAdditiveModelBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.GeneralizedAdditiveModelBinaryClassifier]::new()
        }
        "GeneralizedAdditiveModelRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.GeneralizedAdditiveModelRegressor]::new()
        }
        "LinearSvmBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.LinearSvmBinaryClassifier]::new()
        }
        "LogisticRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.LogisticRegressor]::new()
        }
        "NaiveBayesClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.NaiveBayesClassifier]::new()
        }
        "OnlineGradientDescentRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.OnlineGradientDescentRegressor]::new()
        }
        "OrdinaryLeastSquaresRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.OrdinaryLeastSquaresRegressor]::new()
        }
        "PoissonRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.PoissonRegressor]::new()
        }
        "StochasticDualCoordinateAscentBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.StochasticDualCoordinateAscentBinaryClassifier]::new()
        }
        "StochasticDualCoordinateAscentClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.StochasticDualCoordinateAscentClassifier]::new()
        }
        "StochasticDualCoordinateAscentRegressor" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.StochasticDualCoordinateAscentRegressor]::new()
        }
        "StochasticGradientDescentBinaryClassifier" {
            # Void .ctor()
            return [Microsoft.ML.Trainers.StochasticGradientDescentBinaryClassifier]::new()
        }
        default {
            throw "Error: The Specified AmoebaML Trainer $Type not implemented."
        }
    }

}

