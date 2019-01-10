<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<div>   
   <div id="header">
      <div class="row height_maxPer">
         <div id="headerlogo">
            <img src="<%=request.getContextPath() %>/resources/images/airLogo.png" style="width:28px; height:31px;"/>
         </div>
         <div id="searchbarDiv">
            <div id="searchbar">
               <div id="logoDiv"><img src="<%=request.getContextPath() %>/resources/images/musica-searcher.png" style="width:20px;height:20px"></div>
               <input type="text" id="searchInput" placeholder="검색" style="">
            </div>
         </div>
         <div class="headermenus">
            <div class="headermenu" onClick="">호스트가 되어보세요</div>
            <div class="headermenu" onClick="">도움말</div>
            <div class="headermenu" style="cursor: pointer;" data-toggle = "modal" data-target="#join" data-dismiss = "modal">회원가입</div>
            <div class="headermenu" style="cursor: pointer;" data-toggle = "modal" data-target="#login" data-dismiss = "modal">로그인</div>
         </div>
      </div>
   </div>
</div>



  <%-- ****** 로그인 Modal ****** --%>
  <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="width: 568px; height: 567px;">
        
          <button type="button" class="myclose" data-dismiss="modal" style=" margin-left: 5%; background-color: white;  margin-top: 2%; border: 0px;"><img src="<%=request.getContextPath() %>/resources/ymimg/cancel.png" alt="X"></button>

          
          <br/>
          <input value="이메일 주소" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray;  width: 504px; height: 46px; border-radius: 10px;" />
          
          <input value="비밀번호" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray;  width: 504px; height: 46px; border-radius: 10px;" /> 
         <br/>
          <input id="a" type="checkbox" style="cursor: pointer; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray; width: 5%; height: 5%; vertical-align: middle;"  /><label style="font-size: 10pt; margin-top: 0%; vertical-align: middle; padding-top: 3%; cursor: pointer;" for="a">비밀번호 저장</label>
          
          <br/>
          <div style=" margin-top: 2%;" >
          <a type="text" style="border: 0px solid; margin-left: 5%; margin-top: 2%; color: #008489; font-weight: bold; cursor: pointer;">비밀 번호가 생각나지 않으세요?</a>
          </div>        
          <button type="button" class="login" style="width: 504px; height: 46px; border: 1px solid rightgray; border: none; background-color: #fd5a61; color: white; border-radius: 10px;  margin-left: 5%; margin-top: 2%;">로그인</button>

       
       <div class="modal-footer" style="margin-top: 2%;">
          <div class="join" style=" text-align: center; onClick="" >에어비엔비 계정이 없으세요? <a style="color: #008489; font-weight: bold; cursor: pointer;">회원가입</a></div>  
        </div>
       
       
       
      </div>
      
      </div>
  </div>   
  
  <%-- ****** 회원가입 Modal ****** --%>
  <div class="modal fade" id="join" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="width: 568px; height: 791px;">
        
          <button type="button" class="myclose" data-dismiss="modal" style=" margin-left: 5%; background-color: white;  margin-top: 2%; border: 0px;"><img src="<%=request.getContextPath() %>/resources/ymimg/cancel.png" alt="X"></button>

          
          <br/>
          <input value="이메일 주소" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray; width: 504px; height: 46px; border-radius: 10px; " />
          
          <input value="이름(예:길동)" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray;  width: 504px; height: 46px; border-radius: 10px;" />
          
          <input value="성(예:홍)" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray;  width: 504px; height: 46px; border-radius: 10px;" />
          
          <input value="비밀번호 설정" class="input-data form-control" type="text" style="font-size: 13pt; margin-left: 5%; margin-top: 2%; border: 1px solid rightgray;  width: 504px; height: 46px; border-radius: 10px;" />
         <br/>
         <span  style="border: 0px solid; font-size:13pt; margin-left: 5%; margin-top: 2%; font-weight: bold;" >생일</span>
       	 <br/>
       	 <span  style="border: 0px solid;  margin-left: 5%; margin-top: 2%; " >회원 가입을 하시려면 만 18세 이상이어야 합니다. 생일은 다른 회원에게는</span> 
       	 <br/>
       	 <span  style="border: 0px solid;  margin-left: 5%; margin-top: 2%; " > 공개되지 않습니다.</span> 	
         
         
          <button type="button" class="login" style="width: 504px; height: 46px; border: 1px solid rightgray; border: none; background-color: #fd5a61; color: white; border-radius: 10px;  margin-left: 5%; margin-top: 2%;">가입하기</button>

       
       <div class="modal-footer" style="margin-top: 2%;">
          <div class="join" style="font-size: 10pt; text-align: center; onClick="" >이미 에어비엔비 계정있나요? <a style="color: #008489; font-weight: bold; cursor: pointer;">로그인</a></div> 
        </div>
       
       
       
      </div>
      
      </div>
  </div>