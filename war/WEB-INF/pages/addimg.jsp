<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>图片上传</title>
  <script src="js/jquery.min.js"></script>
  <script>
      function run(input_file,get_data){
        /*input_file：文件按钮对象*/
        /*get_data: 转换成功后执行的方法*/
          if ( typeof(FileReader) === 'undefined' ){
              alert("抱歉，你的浏览器不支持 FileReader，不能将图片转换为Base64，请使用现代浏览器操作！");
          } else {
              try{
                /*图片转Base64 核心代码*/
                  var file = input_file.files[0];
                  //这里我们判断下类型如果不是图片就返回 去掉就可以上传任意文件
                  if(!/image\/\w+/.test(file.type)){
                      alert("请确保文件为图像类型");
                      return false;
                  }
                  var reader = new FileReader();
                  reader.onload = function(){
                      get_data(this.result);
                  }
                  reader.readAsDataURL(file);
              }catch (e){
                  alert('图片转Base64出错啦！'+ e.toString())
              }
          }
      }
      $(function () {
          $("input").change(function () {
              run(this, function (data) {
                  $('img').attr('src',data);
                  $('textarea').val(data);
                  $('file')
              });
          });
      });
  </script>
</head>
<body>
<form action="/upload" method="post">
<input type="file" name="filename">
<hr>
<img style="max-height: 300px; height: 8em; min-width:8em;" >
<hr>
  <input type="text" hidden="hidden" >
<textarea hidden="true" name="filecode"></textarea>
<input type="submit">
</form>
</body>
</html>
