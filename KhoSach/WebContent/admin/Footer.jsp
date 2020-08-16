<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
</div>
</div>
</body>
<footer class="sticky-footer"style="background: #fff;color:#000">
        <div class="container my-auto" >
          <div class="copyright text-center my-auto">
          <p style="font-size: 12px; text-align: center;   padding-top: 24px;">Khosach.com</p>
          <p style="text-align: center;font-size: 12px;">Copyright &copy; FsoftTeamHue2020</p>
          </div>
        </div>
      </footer>
      <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <!-- <script src="https://cdn.tiny.cloud/1/zwvnvg1vtpffr9njh0ifh6avwyc1gp7j7amjt0enupkam7r5/tinymce/5/tinymce.min.js"></script>
  <script>tinymce.init({selector:'textarea'});</script> -->
  <script type="text/javascript" src="js/search.js"></script>

  <script type="text/javascript" src="ckeditor/ckeditor.js" charset ="utf-8"></script>
  <script type="text/javascript">
    config ={};
    config.entities = false;
    config.basicEntities = false;
    config.entities_latin=false;
    config.language='vi';
    CKEDITOR.replace('content',{
      filebrowserUploadUrl: 'ckeditor/ck_upload.php',
      filebrowserUploadMethod: 'form'
    },config);
  </script>
</html>