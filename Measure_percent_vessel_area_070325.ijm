folder = getDir("");
fileList = getFileList(folder);
filePattern = ".*_Simple Segmentation.tif";

run("Set Measurements...", "area area_fraction redirect=None decimal=3");

count=0;
for (j=0; j<fileList.length; j++) {
	if(matches(fileList[j], filePattern)) {
		count++;
		Segmentation_FilePath = folder+fileList[j];
		Original_FilePath = folder+replace(fileList[j], "_Simple Segmentation.tif", ".tif");
		open(Original_FilePath);
		open(Segmentation_FilePath);
		run("Restore Selection");
		setAutoThreshold("Default dark no-reset");
		run("Threshold...");
		run("Measure");
		run("Close All");
	}
}