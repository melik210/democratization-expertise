<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglibs.jsp"%>
 
 
 
<!-- jquery-validation -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/plugins/jquery-validation/additional-methods.min.js"></script>
<script src="/plugins/jquery-validation/jquery.validate.min.js"></script> 

<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://uicdn.toast.com/editor-plugin-color-syntax/latest/toastui-editor-plugin-color-syntax.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
 <!-- Select2 -->
<link rel="stylesheet" href="/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<link rel="stylesheet" href="https://uicdn.toast.com/tui-color-picker/latest/tui-color-picker.min.css"/>

<style>

</style>
<body>

<div class="content-center">
	<h2>Tags 작성하기</h2>
		<div class="section-info">
		<span class="bold">※ tag 작성 가이드 : 이 사이트에서 이전에 아무도 질문하지 않았던 주제를 다루는 사례를 만들 수 있다고 느낄 때에만 새로운 태그를 만들어주세요.※
		</span> <br> <br>
		<span class="bold">새 태그를 만드는 방법<br></span>
 			 1. 질문에 새 태그를 입력하면 해당 태그가 만들어진다. 새 태그를 만들 때 해당 태그를 기억하십시오.<br>
			 2. [tag] 이름은 20자 미만, 설명은 35자 이상이어야 한다.<br>
			 3. [tag] 이름은 문자 집합 'a-z, 0-9, +, #, -' 내에서 사용해야 한다.<br>
	</div>
	<form id="frm" name="frm" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="hidden" name="section" value="t" />		
		
		<div class="con-box">
			<div class="form-list">
				<span>이름 <font class="red">*</font></span>
				<div id="form-group">
                <input type="text" id="title" name="title" value="${result.title}" placeholder="태그 이름을 입력하세요" class="input-type1" maxlength="20">
				</div>
                <span>설명 <font class="red">*</font></span>
                <div class="de-editro" >
               	<div id="form-group">
                    <input type="hidden" name="contents" id="contents" >
                  </div>                   
						<div class="code-html">
							<div id="editor"></div>
						</div>
						<script class="code-js">
							 const { Editor } = toastui;
							 const { colorSyntax } = Editor.plugin;
							 
	                      var editor = new Editor({
	                      el : document.querySelector( '#editor' ),
	                      initialEditType : 'wysiwyg',
	                      previewStyle : 'vertical',
	                      height : '400px',
	                      plugins: [colorSyntax],
	                      placeholder: '설명을 입력해주세요.',
	                      color:''
	                      });
	                    </script>
                </div>
			</div>
		</div>
		
		<div class="mT30 txt-center">
			<button type="submit" name="btnSubmit" class="btn-blue" value="c">등록</button>
		 	<button type="button" class="btn-gray" onclick="location.href='/tags/list'">목록</button>
		</div>
		
	</form>   
</div>
							
				

<script type="text/javascript">
$( function() {

	 $.validator.addMethod("tagRules",  function( value, element ) {
		   return this.optional(element) || /([a-z0-9]).*$/.test(value);
		});
		
      $.validator.setDefaults( {
       submitHandler : function() {
       		fnSave();
           }
     } );

   $( '#frm' ).validate( {
     rules : {
      title : {
        required : true,
        tagRules : true
      },
      contents : {
        required : true
      	}
     },
     messages : {
      title : {
        required : "제목을 입력 해주세요.",
        tagRules : "문자 집합 'a-z 0-9 + # -' 으로 구성된 태그를 만들어주세요."
      },
      contents : {
        required : "내용을 입력 해주세요."
      	}
     },
     errorElement : 'span',
     errorPlacement : function(error, element) {
       error.addClass( 'invalid-feedback' );
       element.closest( '.form-group' ).append( error );
     },
     highlight : function(element, errorClass, validClass) {
       $( element ).addClass( 'is-invalid' );
     },
     unhighlight : function(element, errorClass, validClass) {
       $( element ).removeClass( 'is-invalid' );
     }
   } );

} );

function fnSave() {
    document.frm.action = "/wiki/save.proc";
    document.frm.contents.value = editor.getHtml();
    document.frm.submit();
    
 }


$(function(){
    var responseMessage = "<c:out value="${message}" />";
    alert(responseMg);
    
    if(responseMessage != ""){
        alert(responseMg);
        alert(responseMessage)
    }
});

    
  </script>
</body>
</html>