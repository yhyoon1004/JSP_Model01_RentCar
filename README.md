# JSP_Model01_RentCar
#JSP Model 01 방식을 사용한 차량예약 홈페이지

1. 개발환경
 언어 및 마크업 언어 = java , jsp , html ,간단한 script코드  
 IDE = 이클립스  
 DB = Mysql  (오라클DB 사용 중 개인PC를 윈도우11 업데이트 후  오라클DB 오류발생으로 MysqlDB로 변경)  
    아파치 톰캣 8.5버전  


##실행 결과  

![스크린샷(14)](https://user-images.githubusercontent.com/79188190/160531806-7f1bdad4-f044-429d-9579-5d04533f8ca6.png)


![스크린샷(15)](https://user-images.githubusercontent.com/79188190/160531827-37e3055e-8ae7-4342-89de-7425bf8da44c.png)


![스크린샷(16)](https://user-images.githubusercontent.com/79188190/160531845-db2a1853-d8e5-43e9-9c69-a32fa7c67205.png)


![스크린샷(17)](https://user-images.githubusercontent.com/79188190/160531864-368226c4-1265-4d2a-8825-cd312f1c0e9c.png)


![스크린샷(18)](https://user-images.githubusercontent.com/79188190/160531877-74d476ec-c01a-4c7a-b028-b72a01c2078e.png)


![스크린샷(19)](https://user-images.githubusercontent.com/79188190/160531898-d5f223cd-74db-4bf5-8cb1-3b6a64f08511.png)


![스크린샷(21)](https://user-images.githubusercontent.com/79188190/160531920-15cd0eb7-5936-43d2-b8c8-4bb3f3fee425.png)


![스크린샷(22)](https://user-images.githubusercontent.com/79188190/160531934-c1c72bfa-3d20-41d4-8055-0b72e0d7b017.png)


![스크린샷(23)](https://user-images.githubusercontent.com/79188190/160531958-ed94231a-5605-4b32-9e17-e218224f8bd3.png)


프로젝트 파일 구성
![image](https://user-images.githubusercontent.com/79188190/160530862-e5d687dd-7d06-41b7-b122-bcc2b89d0d1a.png)


구현 기능 : 로그인처리, 차량 예약기능   
문제 사항 : 개발시간 확보가 불충분해 다수의 기능 미구현(정보처리산업기사시험공부, 학업, 팀프로젝트 등으로 인해..)  
            개발과정중 개발환경의 각종 에러로 개발 지연(버전차이, 오타 등..)  
문제 해결 목록 : https://www.notion.so/Cording-634d7d699d4d47899c5145b8efc065c4  
            


DB테이블 구성  
![image](https://user-images.githubusercontent.com/79188190/160530530-e966c6b7-dc76-487b-b9a1-5169d6a4691e.png)

-rentcar테이블  
![image](https://user-images.githubusercontent.com/79188190/160530431-003f1629-9063-48f7-8f85-074085ff0fb7.png)
    입력된 테이블 값 예  
    ![image](https://user-images.githubusercontent.com/79188190/160531151-f9651b90-0581-4c9e-8344-550bd5006093.png)
    DB에 해당한는 차량의 이미지경로를 문자열로 저장해 해당경로를 프로젝트안에 경로와 맞추어 이미지를 출력하는 형식
-member테이블  
![image](https://user-images.githubusercontent.com/79188190/160530309-6840ddda-cf11-4684-82ad-6498b71b78ba.png)
    입력된 테이블 값 예  
    ![image](https://user-images.githubusercontent.com/79188190/160534398-a6d920f5-f9a6-4322-9142-db9e13f44ba4.png)

-carreserve테이블  
![image](https://user-images.githubusercontent.com/79188190/160530159-d461852f-d133-4e9c-8c2b-04b576f0c31a.png)
