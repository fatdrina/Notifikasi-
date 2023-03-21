<!DOCTYPE html>
<html>
<head>
    <title>Alert Tutorial</title>
</head>
<body>
    <button type="button" id="btn">Login</button>

    <script src="dist/sweetalert2.all.min.js"></script>

    <script>
        const btn = document.getElementById('btn');
        btn.addEventListener('click', function(){
            
                Swal.fire({
                  title: 'Are you sure?',
                  text: "You won't be able to revert this!",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                  if (result.isConfirmed) {
                    Swal.fire(
                       'Deleted!',
                       'Your file has been deleted.',
                       'success'
                    )
                  }
                })
        })
    </script>
</body>
</html>
