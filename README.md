Folder: Blood_vessel_ilastik_ML_model   
- contains the ilastik-trained pixel classifier and the training images inside the subfolder called TEST_ROIs. The .ilp ilastik project file could be opened in ilastik GUI along with the provided training images.  


ImageJ/Fiji script: clearOutside_savefile.ijm
- A batch processing script for clearing signal in the vessel channel (CD31) outside the user-defined ROI

ImageJ/Fiji script: Measure_percent_vessel_area_070325.ijm
- A batch processing script for thresholding ilastik-generated segmentation files and calculating blood vessel fraction area.
