using System;
using Microsoft.ML;
using Microsoft.ML.Runtime.Api;

namespace AmoebaML {
    public class Helper<TI, TO> where TI : class where TO : class, new() {
        public object LoadModel(string path) {
            var v = Microsoft.ML.PredictionModel.ReadAsync<TI,TO>(path);
            while (!v.IsCompleted) { }
            return v.Result;
        }
    }
}