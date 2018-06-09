function New-AmoebaMLPipelineTransform {
    [CmdletBinding()]
    param(
        [ValidateSet(
            "ApproximateBootstrapSampler",
            "BinaryPredictionScoreColumnsRenamer",
            "NormalizeTransformBinColumn",
            "BinNormalizer",
            "CategoricalTransformOutputKind",
            "CategoricalHashTransformColumn",
            "CategoricalHashOneHotVectorizer",
            "TermTransformSortOrder",
            "CategoricalTransformColumn",
            "CategoricalOneHotVectorizer",
            "CharTokenizeTransformColumn",
            "CharacterTokenizer",
            "ConcatTransformColumn",
            "ColumnConcatenator",
            "CopyColumnsTransformColumn",
            "ColumnCopier",
            "ColumnDropper",
            "ColumnSelector",
            "DataKind",
            "ConvertTransformColumn",
            "ColumnTypeConverter",
            "CombinerByContiguousGroupId",
            "NormalizeTransformAffineColumn",
            "ConditionalNormalizer",
            "CacheCachingType",
            "DataCache",
            "DatasetScorer",
            "DatasetTransformScorer",
            "TermTransformColumn",
            "Dictionarizer",
            "FeatureCombiner",
            "FeatureSelectorByCount",
            "FeatureSelectorByMutualInformation",
            "LpNormNormalizerTransformGcnColumn",
            "GlobalContrastNormalizer",
            "HashJoinTransformColumn",
            "HashConverter",
            "KeyToValueTransformColumn",
            "KeyToTextConverter",
            "LabelColumnKeyBooleanConverter",
            "LabelIndicatorTransformColumn",
            "LabelIndicator",
            "LabelToFloatConverter",
            "NormalizeTransformLogNormalColumn",
            "LogMeanVarianceNormalizer",
            "LpNormNormalizerTransformNormalizerKind",
            "LpNormNormalizerTransformColumn",
            "LpNormalizer",
            "ManyHeterogeneousModelCombiner",
            "MeanVarianceNormalizer",
            "MinMaxNormalizer",
            "NAHandleTransformReplacementKind",
            "NAHandleTransformColumn",
            "MissingValueHandler",
            "NAIndicatorTransformColumn",
            "MissingValueIndicator",
            "NADropTransformColumn",
            "MissingValuesDropper",
            "MissingValuesRowDropper",
            "NAReplaceTransformReplacementKind",
            "NAReplaceTransformColumn",
            "MissingValueSubstitutor",
            "ModelCombiner",
            "NgramTransformWeightingCriteria",
            "NgramTransformColumn",
            "NGramTranslator",
            "NoOperation",
            "OptionalColumnCreator",
            "PredictedLabelColumnOriginalValueConverter",
            "GenerateNumberTransformColumn",
            "RandomNumberGenerator",
            "RowRangeFilter",
            "RowSkipAndTakeFilter",
            "RowSkipFilter",
            "RowTakeFilter",
            "ScoreColumnSelector",
            "Scorer",
            "UngroupTransformUngroupMode",
            "Segregator",
            "SentimentAnalyzer",
            "SupervisedBinNormalizer",
            "TextTransformLanguage",
            "TextNormalizerTransformCaseNormalizationMode",
            "TextTransformTextNormKind",
            "TextTransformColumn",
            "TermLoaderArguments",
            "TextFeaturizer",
            "TextToKeyConverter",
            "TrainTestDatasetSplitter",
            "TreeLeafFeaturizer",
            "TwoHeterogeneousModelCombiner",
            "DelimitedTokenizeTransformColumn",
            "WordTokenizer"
        )][System.String]$Type,
        [System.String]$outputColumn,
        [System.String[]]$inputColumns,
        [System.Tuple[String, String][]]$inputOutputColumns
    )
    switch ($Type) {
        "ApproximateBootstrapSampler" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ApproximateBootstrapSampler]::new()
        }
        "BinaryPredictionScoreColumnsRenamer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.BinaryPredictionScoreColumnsRenamer]::new()
        }
        "NormalizeTransformBinColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NormalizeTransformBinColumn]::new()
        }
        "BinNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.BinNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.BinNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.BinNormalizer]::new()
        }
        "CategoricalHashTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.CategoricalHashTransformColumn]::new()
        }
        "CategoricalHashOneHotVectorizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.CategoricalHashOneHotVectorizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.CategoricalHashOneHotVectorizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.CategoricalHashOneHotVectorizer]::new()
        }
        "CategoricalTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.CategoricalTransformColumn]::new()
        }
        "CategoricalOneHotVectorizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.CategoricalOneHotVectorizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.CategoricalOneHotVectorizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.CategoricalOneHotVectorizer]::new()
        }
        "CharTokenizeTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.CharTokenizeTransformColumn]::new()
        }
        "CharacterTokenizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.CharacterTokenizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.CharacterTokenizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.CharacterTokenizer]::new()
        }
        "ConcatTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ConcatTransformColumn]::new()
        }
        "ColumnConcatenator" {
            # Void .ctor()
            # Void .ctor(System.String, System.String[])
            if (($outputColumn) -and ($inputColumns)) {
                return [Microsoft.ML.Transforms.ColumnConcatenator]::new($outputColumn, $inputColumns)
            }
            return [Microsoft.ML.Transforms.ColumnConcatenator]::new()
        }
        "CopyColumnsTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.CopyColumnsTransformColumn]::new()
        }
        "ColumnCopier" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.ColumnCopier]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.ColumnCopier]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.ColumnCopier]::new()
        }
        "ColumnDropper" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ColumnDropper]::new()
        }
        "ColumnSelector" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ColumnSelector]::new()
        }
        "ConvertTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ConvertTransformColumn]::new()
        }
        "ColumnTypeConverter" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.ColumnTypeConverter]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.ColumnTypeConverter]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.ColumnTypeConverter]::new()
        }
        "CombinerByContiguousGroupId" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.CombinerByContiguousGroupId]::new()
        }
        "NormalizeTransformAffineColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NormalizeTransformAffineColumn]::new()
        }
        "ConditionalNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.ConditionalNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.ConditionalNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.ConditionalNormalizer]::new()
        }
        "DataCache" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.DataCache]::new()
        }
        "DatasetScorer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.DatasetScorer]::new()
        }
        "DatasetTransformScorer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.DatasetTransformScorer]::new()
        }
        "TermTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TermTransformColumn]::new()
        }
        "Dictionarizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.Dictionarizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.Dictionarizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.Dictionarizer]::new()
        }
        "FeatureCombiner" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.FeatureCombiner]::new()
        }
        "FeatureSelectorByCount" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.FeatureSelectorByCount]::new()
        }
        "FeatureSelectorByMutualInformation" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.FeatureSelectorByMutualInformation]::new()
        }
        "LpNormNormalizerTransformGcnColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.LpNormNormalizerTransformGcnColumn]::new()
        }
        "GlobalContrastNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.GlobalContrastNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.GlobalContrastNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.GlobalContrastNormalizer]::new()
        }
        "HashJoinTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.HashJoinTransformColumn]::new()
        }
        "HashConverter" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.HashConverter]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.HashConverter]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.HashConverter]::new()
        }
        "KeyToValueTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.KeyToValueTransformColumn]::new()
        }
        "KeyToTextConverter" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.KeyToTextConverter]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.KeyToTextConverter]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.KeyToTextConverter]::new()
        }
        "LabelColumnKeyBooleanConverter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.LabelColumnKeyBooleanConverter]::new()
        }
        "LabelIndicatorTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.LabelIndicatorTransformColumn]::new()
        }
        "LabelIndicator" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.LabelIndicator]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.LabelIndicator]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.LabelIndicator]::new()
        }
        "LabelToFloatConverter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.LabelToFloatConverter]::new()
        }
        "NormalizeTransformLogNormalColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NormalizeTransformLogNormalColumn]::new()
        }
        "LogMeanVarianceNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.LogMeanVarianceNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.LogMeanVarianceNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.LogMeanVarianceNormalizer]::new()
        }
        "LpNormNormalizerTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.LpNormNormalizerTransformColumn]::new()
        }
        "LpNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.LpNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.LpNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.LpNormalizer]::new()
        }
        "ManyHeterogeneousModelCombiner" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ManyHeterogeneousModelCombiner]::new()
        }
        "MeanVarianceNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MeanVarianceNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MeanVarianceNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MeanVarianceNormalizer]::new()
        }
        "MinMaxNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MinMaxNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MinMaxNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MinMaxNormalizer]::new()
        }
        "NAHandleTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NAHandleTransformColumn]::new()
        }
        "MissingValueHandler" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MissingValueHandler]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MissingValueHandler]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MissingValueHandler]::new()
        }
        "NAIndicatorTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NAIndicatorTransformColumn]::new()
        }
        "MissingValueIndicator" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MissingValueIndicator]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MissingValueIndicator]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MissingValueIndicator]::new()
        }
        "NADropTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NADropTransformColumn]::new()
        }
        "MissingValuesDropper" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MissingValuesDropper]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MissingValuesDropper]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MissingValuesDropper]::new()
        }
        "MissingValuesRowDropper" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.MissingValuesRowDropper]::new()
        }
        "NAReplaceTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NAReplaceTransformColumn]::new()
        }
        "MissingValueSubstitutor" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.MissingValueSubstitutor]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.MissingValueSubstitutor]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.MissingValueSubstitutor]::new()
        }
        "ModelCombiner" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ModelCombiner]::new()
        }
        "NgramTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NgramTransformColumn]::new()
        }
        "NGramTranslator" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.NGramTranslator]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.NGramTranslator]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.NGramTranslator]::new()
        }
        "NoOperation" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.NoOperation]::new()
        }
        "OptionalColumnCreator" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.OptionalColumnCreator]::new()
        }
        "PredictedLabelColumnOriginalValueConverter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.PredictedLabelColumnOriginalValueConverter]::new()
        }
        "GenerateNumberTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.GenerateNumberTransformColumn]::new()
        }
        "RandomNumberGenerator" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.RandomNumberGenerator]::new()
        }
        "RowRangeFilter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.RowRangeFilter]::new()
        }
        "RowSkipAndTakeFilter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.RowSkipAndTakeFilter]::new()
        }
        "RowSkipFilter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.RowSkipFilter]::new()
        }
        "RowTakeFilter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.RowTakeFilter]::new()
        }
        "ScoreColumnSelector" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.ScoreColumnSelector]::new()
        }
        "Scorer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.Scorer]::new()
        }
        "Segregator" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.Segregator]::new()
        }
        "SentimentAnalyzer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.SentimentAnalyzer]::new()
        }
        "SupervisedBinNormalizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.SupervisedBinNormalizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.SupervisedBinNormalizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.SupervisedBinNormalizer]::new()
        }
        "TextTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TextTransformColumn]::new()
        }
        "TermLoaderArguments" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TermLoaderArguments]::new()
        }
        "TextFeaturizer" {
            # Void .ctor()
            # Void .ctor(System.String, System.String[])
            if (($outputColumn) -and ($inputColumns)) {
                return [Microsoft.ML.Transforms.TextFeaturizer]::new($outputColumn, $inputColumns)
            }
            return [Microsoft.ML.Transforms.TextFeaturizer]::new()
        }
        "TextToKeyConverter" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.TextToKeyConverter]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.TextToKeyConverter]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.TextToKeyConverter]::new()
        }
        "TrainTestDatasetSplitter" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TrainTestDatasetSplitter]::new()
        }
        "TreeLeafFeaturizer" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TreeLeafFeaturizer]::new()
        }
        "TwoHeterogeneousModelCombiner" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.TwoHeterogeneousModelCombiner]::new()
        }
        "DelimitedTokenizeTransformColumn" {
            # Void .ctor()
            return [Microsoft.ML.Transforms.DelimitedTokenizeTransformColumn]::new()
        }
        "WordTokenizer" {
            # Void .ctor()
            # Void .ctor(System.String[])
            # Void .ctor(System.ValueTuple`2[System.String,System.String][])
            if ($inputColumns) {
                return [Microsoft.ML.Transforms.WordTokenizer]::new($inputColumns)
            }
            if ($inputOutputColumns) {
                return [Microsoft.ML.Transforms.WordTokenizer]::new($inputOutputColumns)
            }
            return [Microsoft.ML.Transforms.WordTokenizer]::new()
        }
        default {
            throw "Error: The Specified AmoebaML Transforms $Type not implemented."
        }
    }
}