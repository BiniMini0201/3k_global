package helper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.Thumbnails.Builder;
import net.coobird.thumbnailator.geometry.Positions;


public class UploadHelper {
	//싱글톤 시작
	private static UploadHelper current = null;
		
		public static UploadHelper getInstance() {
			if (current == null){
				current = new UploadHelper();
			}
			return current;
		}
		public static void freeInstance(){
			//객체에 null을 대입하면 메모리 에서 삭제
			current=null;
			
		}
		//기본 생성자를 private 으로 은닉하면 new를 통한 생성 불가
		private UploadHelper(){
			super();
		}
	//싱글톤 끝
	/**자신의 워크스페이스 경로*/	
	public static final String homeDir= "C:/프로그래밍/05-JSP/workspace";
	/** 업로드 된 결과물이 저장될 폴더*/
	public static final String fileDir = homeDir +"/upload";
	/**업로드가 진행될 임시폴더*/
	public static final String tempDir = fileDir +"/temp";
	/**file정보를 저장하기 위한 컬렉션*/
	private List<FileInfo> fileList; 
	/**그 밖의 일반 데이터를 저장하기 위한 컬렉션*/
	private Map<String, String> paramMap;
	/**업로드된 파일의 리스트를 리턴한다*/
	public List<FileInfo> getFileList() {
		return this.fileList;
	}
	/**업로드시에 함께 전달된 파라미터들의 컬렉션을 리턴한다,*/
	public Map<String, String> getparamMap() {
		return this.paramMap;
	}
	/**
	 * Multipart로 전송된 데이터를 판별하여 파일리스트와 텍스트 파라미터를 분류한다.
	 * @param request 
	 * @throws Exception
	 */
	public void multipatRequest(HttpServletRequest request)throws Exception{
														//이 메서드에서 발생하는
														//예외처리를 호출하는 쪽으로 넘긴다					
		/**mutipart로 전송 되었는지 여부 검사*/
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
		if (!isMultipart) {
			//전송될 데이터가 없으므로 강제로 예외 발생
			throw new Exception();
		}
		/**폴더의 존재 여부 체크해서 생성하기*/
		File uploadDirFile = new File (fileDir);
		if (!uploadDirFile.exists()) {
			uploadDirFile.mkdir();
		}
		
		File tempDirFile = new File(tempDir);
		if (!tempDirFile.exists()) {
			tempDirFile.mkdirs();
		}
		/**업로드가 수행될 임시 폴더 연결*/
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(tempDirFile);
		/**업로드 시작*/
		ServletFileUpload upload = new ServletFileUpload(factory);
		//utf 8 처리 과정
		upload.setHeaderEncoding("UTF-8");
		//최대 파일 크기 --> 20M
		upload.setSizeMax(20 * 1024 * 1024);
		//실제 업로드를 수행하여 파일 및 파라미터들을 얻기
		List<FileItem> item = upload.parseRequest(request);
		
		//item에 저장 데이터가 분류될 컬렉션들 할당하기
		fileList = new ArrayList<FileInfo>();
		paramMap = new HashMap<String, String>();
		/** 업로드 된 파일의 정보 처리*/
		for(int i=0; i<item.size(); i++){
			//정송된 정보 하나를 추출한다.
			FileItem f = item.get(i);
			
			if (f.isFormField()) {
				/**파일 형식의 데이터가 아닌 경우 -->paramMap에 정보분류*/
				String key = f.getFieldName();
				//value를 UTF-8 형식으로 취득한다.
				String value = f.getString("UTF-8");
				
				//이미 동일한 키값이 map안에 존재한다면?-->checkbox
				if (paramMap.containsKey(key)) {
					//기존의 값 뒤에 콤마(,)를 추가해서 값을 병합한다.
					String new_value = paramMap.get(key) + "," + value;
					paramMap.put(key, new_value);
				}else{
					//그렇지 않다면 키와 값을 신규로 추가한다.
					paramMap.put(key, value);
				}
			}else {
				/**파일 형식의 데이터인 경우 --> fileList에 정보 분류*/
				
				/** 1) 파일의 정보를 추출한다*/
				String orginName = f.getName();
				String contentType = f.getContentType();
				long fileSize = f.getSize();
				
				//파일 사이즈가 없다면 조건으로 돌아간다
				if (fileSize < 1) {
					continue;
				}
				//파일이름에서 확장자만 추출
				String ext = orginName.substring(orginName.lastIndexOf("."));
				/** 2)동일한 이름의 파일이 존재하는지 검사한다*/
				//웹 서버에 저장될 이름을 현재의 Timestamp+ 확장자(ext)로 지정 중복지정을 방지함
				String fileName = System.currentTimeMillis() + ext;
				//저장된 파일 정보를 담기 위한 File 객체
				File uploadFile = null;
				//중복된 이름이 파일이 존재할 경우index 값을 1씩 증가하면서 뒤에 덧붙인다
				int index = 0;
				
				//일단 무한루프
				while(true){
					//업로드 파일이 저장될 폴더 + 파일 이름으로 파일객페를 생성한다.
					uploadFile = new File(uploadDirFile, fileName);
					
					//동일한 이름의 파일이 없다면 반복 중단
					if(!uploadFile.exists()){
						break;
					}
					//그렇지 않다면 index값을 적용하여 이름 변경
					fileName = System.currentTimeMillis() +(++index) + ext;
				}// end Whild
				//최정적으로 구성된 파일객체를 사용해서
				//임시 폴더에 존재하는 파일을 보돤용 폴더에 복사하고, 임시파일 삭제.
				f.write(uploadFile);
				f.delete();
				/** 3)파일 저장 및 파일 정보 분류 처리*/
				FileInfo info = new FileInfo();
				info.setOrginName(orginName);
				info.setFileDir(fileDir);
				info.setFileName(fileName);
				info.setContentType(contentType);
				info.setFilesize(fileSize);
				
				fileList.add(info);
			}//end if
		}//end for
	};
	/**
	 * 지정된 결로의 파일을 읽어들인다.그 내용을 응답객체(response)를 사용해 출력한다.
	 * @param response-응답객체
	 * @param filePath-서버상의 파일경로
	 * @param orginName-원본 파일 이름
	 * @throws IOExceotion
	 */
	public void printFileStream(HttpServletResponse response, String filePath, String orginName)throws IOException{
		
		
		/**파일의 존재 여부를 확인하고 파일의 정보 추출하기*/
		File f = new File(filePath);
		if(!f.exists()){
			throw new FileNotFoundException();
		}
		//파일의 크기 추출하기
		long size = f.length();
		//서버에 보관되어 있는 파일의 이름 추출하기
		String name = f.getName();
		
		//원본 파일명이 전달되지 않은경우 서버상의 파일이름으로 대체
		if(orginName==null){
			orginName = name;
		}
		//파일형식 얻기(업로드 정보에서 추출했던 contenType와 같은 값)
		MimetypesFileTypeMap typeMap = new MimetypesFileTypeMap();
		String fileType = typeMap.getContentType(f);
		/** 스트림을 통한 파일의 바이너리 읽기*/
		//파일 읽기 스트림을 생성한다.
		InputStream is = new FileInputStream(f);
		//파일의 내용을 담기 위한 byte 배열
		byte b[] = new byte[(int) size];
		
		//파일 읽기 
		is.read(b);
		/**브라우저에게 이 메서드를 호출하는 페이지의 형식을 일반 파일로 인시시키기 위한 처리*/
		//다른 데이터와 섞이지 않도록 응답객체(response)를 리셋한다.
		response.reset();
		
		//파일형식 정보 설정
		response.setHeader("Content-Type", fileType+"; charset=UTF-8");
		
		//파일의 이름 설정 (인코딩 필요함)
		String encFileName = URLEncoder.encode(orginName,"UTF-8");
		response.setHeader("Content-Disposition", "attachment; filename=" +encFileName+";");
	
		//파일의 용량 설정
		response.setContentLength((int)size);
		/**읽어들인 파일 데이터 출력하기*/
		OutputStream os = response.getOutputStream();
		os.write(b);//출력하기
		os.flush();//출력할 내용을 브라우저에 전송
		
		/**스트림을 닫는다*/
		is.close();
		os.close();
	}
	public void printFileStream(HttpServletResponse response, String filePath,
			 int width, int height, boolean crop)throws IOException{
		//썸네일은 생성하고 경로를 리턴받는다
		String thumbnail = this.createThumbnail(filePath, width, height, crop);
		//썸네일을 출력한다.
		//--> 이 메서드를 호출하기 위해서 try~catch가 요구되지만
		//현재 메서드 역시 whrows 를 명시했기 때문에
		//예외 처리가 현제 메서드를 호출한 곳으로 이관된다,
		this.printFileStream(response, thumbnail, null);
	 }
	/**
	 * 리사이즈 된 썸네일 이미지를 생성한다.
	 * @param loadFile - 원본 파일의 경로
	 * @param width	   -최대 이미지 가로 크기
	 * @param height   -최대 이미지 세로 크기
	 * @param crop	   -이미지 크롭 사용 여부
	 * @return 생성된 이미지의 절대경로
	 * @throws IOException
	 */
	public String createThumbnail(String loadFile, int width, int height, boolean crop)
			throws IOException{
		//생성된 썸네일 이미지 경로
				String saveFile = null;
				
				//원본 파일명에서 저장될 파일 경로를 생성한다.
				File load = new File(loadFile);
				String dirPath = load.getParent();
				String fileName = load.getName();
				
				//원본 파일이름에소 이름과 활장자를 분리한다.
				int p = fileName.lastIndexOf(".");
				String name = fileName.substring(0,p);
				String ext = fileName.substring(p+1);
				
				//원본이름에 요청된 사이즈를 덧붙여서 생성될 파일명을 구성한다.
				String prefix = "_resize_";
				if (crop) {
					prefix ="_crop_";
				}
				String thumbName = name + prefix + width + "x" + height + "." + ext;
				File f = new File(dirPath, thumbName);
				
				//절대경로 추출
				saveFile = f.getAbsolutePath();
				//해달 경로에 이미지가 없는 경우만 수행
				if(!f.exists()){
					//원본이미지 가져오기
					Builder<File> Builder = Thumbnails.of(loadFile);
					//크롭 이미지 여부
					if(crop == true){
						Builder.crop(Positions.CENTER);
					}
					//축소할 사이즈 지정
					Builder.size(width, height);
					//세로로 촬영된 사진은 회전시킴
					Builder.useExifOrientation(true);
					//차일의 확장자명 지정
					Builder.outputFormat(ext);
					//저장할 파일이름 지정
					Builder.toFile(saveFile);
				}
				
				return saveFile;
		
	}
}
	
	
	










































	
	
