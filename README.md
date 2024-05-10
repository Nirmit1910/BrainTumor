# **BrainGuardan - Brain Tumor Classification**

## Project Overview

BrainGuardian is an innovative project aimed at leveraging advanced AI techniques for the classification of brain tumors using MRI (Magnetic Resonance Imaging) datasets. By employing cutting-edge machine learning algorithms, BrainGuardian seeks to develop a precise and reliable model capable of accurately identifying various types of brain tumors from MRI images.

## Objective

The project aims to harness AI techniques and machine learning algorithms to classify brain MRI images according to various stages of Brain Tumor disease. By accurately discerning the progression of the disease, the model can assist healthcare practitioners in timely diagnosis and tailored treatment strategies.

Outlined below are the specific objectives of the project:

**.MRI Preprocessing**: Enhance image quality, eliminate noise, and standardize data through meticulous preprocessing of MRI images.

**.Model Development**: Utilize TensorFlow and Keras to construct and train deep learning models adept at classifying MRI images into distinct Alzheimer's disease stages. Employ optimization strategies to refine models for optimal classification accuracy, precision, recall, and other key performance metrics.

**.Model Evaluation**: Employ appropriate evaluation metrics to assess the trained models thoroughly. Conduct comparative analysis to discern the most efficacious model among the alternatives.

**.Results Visualization and Reporting**: Present results comprehensively, incorporating MRI images, model predictions, and evaluation metrics for intuitive interpretation and analysis. Compile a detailed report summarizing the project's methodology, findings, limitations, and avenues for potential enhancement.

## Dataset: Figshare Dataset

![tumor_images](https://github.com/Nirmit1910/BrainTumor/assets/65971697/72c3dd55-1295-455a-ac37-0170b84e3f71)

The project utilizes the [Figshare Dataset](https://figshare.com/articles/dataset/brain_tumor_dataset/1512427) . The dataset consists of 3064  MRI images, resized to 256 x 256 pixels, representing different stages of Brain Tumor disease.

### Dataset Details

- Total Images: 3064
- Classes:
  - Class 1: Glioma (1426 images)
  - Class 2: Meningioma (708 images)
  - Class 3: Pituitary (930 images)



## Technologies Used

- TensorFlow: An open-source machine learning framework used for building and training deep learning models.
- Keras: A high-level neural networks API that runs on top of TensorFlow. It provides an intuitive interface for designing and training models.
- Pandas: A powerful data manipulation library used for data preprocessing and analysis.
- Matplotlib: A popular plotting library used for data visualization, including the visualization of MRI images and performance metrics.
- NumPy: A fundamental library for scientific computing in Python, used for numerical operations and array manipulation.
- Scikit-learn: A machine learning library that provides tools for data preprocessing, model evaluation, and performance metrics.

## Data Preprocessing and Augmentation

In the initial steps of the project, the dataset of Alzheimer's disease brain MRI images undergoes preprocessing and augmentation to enhance the data quality and increase the robustness of the model. The following steps are performed:

- Image extraction: Originally images were organized in matlab data format (.mat file).For classification purpose images were extracted from .mat files via [code](https://github.com/Nirmit1910/BrainTumor/blob/main/img_extraction.m)
- Image Preprocessing: Further images were preprocessed using [code](https://github.com/Nirmit1910/BrainTumor/blob/main/preprocessing.py) where noises were removed and images were resized to 256x256 from 512x512 pixels.
- Data Augmentation: The training data is augmented using techniques such as rescaling, shearing, and zooming to increase its diversity and improve the model's ability to generalize.
- Data Normalization: The validation and test data are rescaled for normalization.
- ImageDataGenerators: The Keras `ImageDataGenerator` is used to generate batches of augmented images for the training set and normalized images for the validation and test sets.
- Class Mode: The class mode is set to 'categorical' to support multi-class classification.

These steps ensure that the dataset is properly prepared for training and evaluating deep learning models for the classification of Brain Tumor's using brain MRI images.


## AI Models Used

The project incorporates the following AI models for Alzheimer's disease classification:

### 1. CNN Models

The project utilizes various CNN models for classification:

- Custom CNN architecture
- CNN (Convolutional Neural Network) [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Custom%20CNN%20Model/braintumorcnn.ipynb)

### 2. Transfer Learning Models

The project employs transfer learning using pre-trained models:


- VGG19: [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Transfer%20Learning/braintumour-vgg19.ipynb)
- MobileNetV2: [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Transfer%20Learning/braintumour-mobilenetv2.ipynb)
- InceptionV2: [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Transfer%20Learning/braintumour-inceptionresnetv2.ipynb)
- DenseNet201 [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Transfer%20Learning/braintumour-densenet201.ipynb)

### 3. GLCM with Machine Learning
The project includes traditional machine learning algorithms for classification:

- XGBoost
- SVM (Support Vector Machine)
- Random Forest
-  [Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/GLCM/braintumorglcm.ipynb)


### 4. Federatd Learning

The project implements federated learning approach:

-[Implementation Notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/Federated%20Learning/federated-learning.ipynb)


## Model Performances

The following table shows the evaluation metrics for different models used in the HealthCoder project:

### Transfer Learning,Conventional CNN,Federated Learning

| Model               | Test Loss | Test Accuracy | Test AUC | Test Precision | Test Recall |
|---------------------|-----------|---------------|----------|----------------|-------------|
| CNN                 | 0.1536    | 0.9528        | 0.9925   | 0.9527         | 0.9511      |
| Federated Learning  | 0.2053    | 0.9560        | 0.9890   | 0.9560         | 0.9560      |
| VGG19               | 0.2556    | 0.8958        | 0.9811   | 0.9017         | 0.8811      |
| DENSENET201         | 0.2215    | 0.9218        | 0.9855   | 0.9261         | 0.9186      |
| MOBILENETV3         | 0.3355    | 0.8827        | 0.9730   | 0.8874         | 0.8730      |
| INCEPTIONRESNETV2   | 0.3117    | 0.8746        | 0.9735   | 0.8857         | 0.8583      |

### GLCM With Machine Learning Models


| Model                  | Accuracy |
|------------------------|----------|
| Support Vector Machine | 0.75     |
| Random Forest          | 0.71     |
| XGBoost                | 0.73     |




## Overall Accuracy of all Models Comparison Plot
![all_model_accuracy_plot](https://github.com/Nirmit1910/BrainTumor/assets/65971697/d3c214fb-3b0c-473d-8b6e-295e201cea62)


This plot shows that we get our highest accuracies from our **Federated Learning** and **SVM model** . While other models have also acquired quite decent accuracies.

For more of these plots over different performance metrics such as loss, precison, recall, auc etc. do check out [comparison notebook](https://github.com/Nirmit1910/BrainTumor/blob/main/modelcomparions.ipynb).



## References

- https://www.sciencedirect.com/science/article/abs/pii/S0010482519302148
- https://www.sciencedirect.com/science/article/pii/S0957417423010369
- https://www.sciencedirect.com/science/article/pii/S2665917423000302
- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9468505/
- https://www.mdpi.com/2227-9717/11/3/679

