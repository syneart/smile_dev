
import smile.classification.RandomForest;
import smile.data.formula.Formula;
import smile.io.Read;
import smile.validation.metric.*;

var basePath = "/root/syneart/smile/shell/src/universal/";
var segTrain = Read.arff(basePath + "data/weka/segment-challenge.arff");
var segTest = Read.arff(basePath + "data/weka/segment-test.arff");
var formula = Formula.lhs("class");
var model = RandomForest.fit(formula, segTrain);
var pred = model.predict(segTest);

System.out.println(Accuracy.of(formula.y(segTest).toIntArray(), pred));
System.out.println(ConfusionMatrix.of(formula.y(segTest).toIntArray(), pred));
System.out.println(model.metrics());

/exit
