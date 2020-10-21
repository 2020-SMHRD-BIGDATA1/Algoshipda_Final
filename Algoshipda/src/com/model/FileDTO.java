
package com.model;

public class FileDTO {
    
   String fileName;
   String fileRealName;
   String predictlocation;
   public String getPredictlocation() {
	return predictlocation;
}
public void setPredictlocation(String predictlocation) {
	this.predictlocation = predictlocation;
}
public String getFileName() {
      return fileName;
   }
   public void setFileName(String fileName) {
      this.fileName = fileName;
   }
   public String getFileRealName() {
      return fileRealName;
   }
   public void setFileRealName(String fileRealName) {
      this.fileRealName = fileRealName;
   }
public FileDTO(String fileName, String fileRealName, String predictlocation) {
	super();
	this.fileName = fileName;
	this.fileRealName = fileRealName;
	this.predictlocation = predictlocation;
}
 
   
   
   

}