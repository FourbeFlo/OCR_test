# OCR_test 

The following repository contains the data and scripting to test the OCR models. 
It presents the methods of two tests. 
1. To determine the general performance of the model, we make a calculation of accuracy and determination of the types of characters recognised.
   - For documentation : https://github.com/FoNDUE-HTR/Documentation/blob/master/KRAKEN.md, with python script for the split [script](https://github.com/FoNDUE-HTR/Documentation/tree/master/split).
3. To studies each file whose word error rate, word error accuracy, word error character and provides a csv of all the metric values.
  - in this case we use the method proposed on https://github.com/FoNDUE-HTR/kamiCLI + a python script for the WER WACC CER results.
  - note that the latest update of kraken now allows you to obtain these results directly.

# List of tested model
1. Gallicorpora+_best.mlmodel : Pinche, & Gabay. (2022). Gallicorpora+. Zenodo. https://doi.org/10.5281/zenodo.7410529
2. Lamertus_test-10.mlmodel : https://github.com/FourbeFlo/OCR_test/releases/download/ml.model/lambertus_test_mai_best.mlmodel
3. Lambertus_03_best_mlmodel : https://github.com/FourbeFlo/Lambertus/releases/download/model/Lambertus_03_best.mlmodel 
4. nfd_best.mlmodel (given by S.Gabay) : 

# Result of metric comparaison 
![mean of HTR metrical analysis](https://github.com/FourbeFlo/OCR_test/blob/fc319c95a30c4b6f40db78a22ab7805ee4da0a48/comparison_metrics2.png)
