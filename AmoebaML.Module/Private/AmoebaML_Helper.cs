using System;
using Microsoft.ML;
using Microsoft.ML.Runtime.Api;


namespace AmoebaML {
    public class Helper<TI, TO> where TI : class where TO : class, new() {
        public void Load(string path) {
            //var v = Microsoft.ML.PredictionModel<TI, TO>.ReadASync<TI, TO>(path);
            var v = Microsoft.ML.PredictionModel.ReadAsync<TI,TO>(path);
            //.ReadASync(path);
            Console.WriteLine(
                String.Format(
                "My Value: {0}", v
                )
            );
            
        }
    }
}