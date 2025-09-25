folder = getDir("");
n = 
nImages;
for (i = 0; i < n; i++) {
	selectImage(1);
	run("Clear Outside", "stack");
	saveAs("Tiff", folder+getTitle+"_ROI_"+i+1);
	close();
}


