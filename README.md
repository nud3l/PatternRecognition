# Pattern Recognition
## TU Delft/IN4085 2015/2016
This repository contains the final project for this course. The project covered classifying digits based on images (NIST dataset) in two scenarios.

1) The dataset is fairly large with 200 to 1000 objects per class as a training set. The goal is to reach a classification error below 5%.
2) The dataset is limited with at most 10 objects per class as a training set. The goal is to reach a classification error below 25%.

As part of the project multiple classifiers (such as parzen, knn, neural networks, svm etc.) are evaluated using cross-validation. Furthermore, feature selection and extraction methods are applied as well as different representations of the images (such as pixel and feature). Lastly, combinations of classifiers are used to optimize the classification error. The [report](report/IN4085-Report-2016-Grigorios-Kyriakos-Dominik.pdf) shows that we reached a classification error of 4.1% and 24.0% respectively. Parts of the code (in Matlab) and the datasets (in Matlab) can be found in the according sections.
