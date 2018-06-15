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
        [AllowEmptyString()]
        [System.String]$outputColumn,
        [AllowEmptyString()]
        [System.String[]]$inputColumns,
        [AllowNull()]
        [System.Tuple[String, String][]]$inputOutputColumns
    )
    $PassedParams = $PSBoundParameters.Keys | ? { $_ -ne "Type" }
    $Classobject = . ([ScriptBlock]::Create("[Microsoft.ML.Transforms.$Type]"))

    $Constructors = $ClassObject.GetConstructors() | sort-object -Descending
    foreach ($Constructor in $Constructors) {
        $Params = $Constructor.GetParameters()
        $MatchingParameters = $Params.Name | ? { $PassedParams -like $_ }
        if ($MatchingParameters.Count -eq $Params.Count) {
            Write-Verbose ("{0}: {1}" -f $MyInvocation.MyCommand, "Constructing Transform.");
            $Parameters = $Params.Name | % {  $PSBoundParameters[$_] }
            return new-object "Microsoft.ML.Transforms.$Type" -ArgumentList $Parameters
        }
    }
    throw ("{0}: {1}{2}{3}" -f $MyInvocation.MyCommand, 
            "Invalid Overload Expected:", ("`r`n" * 2),
            ($ClassObject::new | out-string).Replace("Microsoft.ML.Transforms.","").Replace("Params","")
    );
}