package helper;

public class FileInfo {

	private String orginName; 	//원본 파일 이름
	private String fileDir;		//파일이 저장되어 있는 서버상의 경로
	private String fileName;	//서버상의 파일 이름
	private String contentType; //파일의 형식
	private long filesize;		//파일의 용량
	public String getOrginName() {
		return orginName;
	}
	public void setOrginName(String orginName) {
		this.orginName = orginName;
	}
	public String getFileDir() {
		return fileDir;
	}
	public void setFileDir(String fileDir) {
		this.fileDir = fileDir;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
	
	@Override
	public String toString() {
		return "FileInfo [orginName=" + orginName + ", fileDir=" + fileDir + ", fileName=" + fileName + ", contentType="
				+ contentType + ", filesize=" + filesize + "]";
	}
		
	
	
}
