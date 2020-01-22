$(document).ready(function(){
    // Sketchfab Viewer API: Localization;
    var version = '1.5.2';
    // var urlid = '1b7dbb4270de461ca3db0a336e8e9cf7';
    var urlid = '';

    function show3D(data) {
        // console.log(data);
        // initialize
        var iframe = document.getElementById('api-frame');
        if (!iframe) {
            console.log('no target');
        }
        if (!window.Sketchfab) {
            console.log('no Sketchfab library');
        }
        var client = new window.Sketchfab(version, iframe);
        var error = function() {
            console.error('Sketchfab API error');
        };
        var success = function(api) {
            api.start(function() {
                api.addEventListener('viewerready', function() {
                   for (let i = 0; i < 40; i++) {
                        // ini untuk menampilkan di deskripsi
                        let content = 'Letak = '+data[i].letak+'<br>';
                        content += 'Nomor Hak = '+data[i].nomor_hak+'<br>';
                        content += 'Tanggal Lahir= '+data[i].tanggal_lahir+'<br>';
                        content += 'Luas = '+data[i].luas+'<br>';
                        content += 'Nomor Ruang = '+data[i].nomor_ruang+'<br>';

                        api.updateAnnotation(i, {
                            title: data[i].nama_pemegang,
                            content: content
                        });                       
                   }
                });
                $(document).on('change', '#list-room', function(){
                    let value = this.value;
                    api.gotoAnnotation(value, { preventCameraAnimation: true, preventCameraMove: false });
                });
            });
        };
        client.init(urlid, {
            success: success,
            error: error,
            autostart: 1,
            preload: 1
        });
    }
    function listRoom(data)
    {
        let list = '';
        list += '<option value=""> Pilih Ruangan </option>';
        $.each(data, function(index, item){
             list += '<option value="'+index+'" style="text-align:center"> Ruangan '+item.nomor_ruang+'</option>';
        })
        $('#list-room')
        .find('option')
        .remove()
        .end()
        .append(list)
    }
    function listFloor(data)
    {
        let list = '';
        $.each(data, function(index, item){
             list += '<option value="'+item+'" style="text-align:center">'+item+'</option>';
        })

        $('#list-floor')
        .append(list)
    }
    function showData(params = null)
    {
        $.get('./app/Api.php?floor='+params, function(data){
            var data = JSON.parse(data)
            var rooms = data.data
            var getAllFloor = data.getAllFloor

            // console.log(data)
            
            listRoom(rooms);
            show3D(rooms);

            if(params == null){
                listFloor(getAllFloor);
            }
        });
    }
    $(document).on('change', '#list-floor', function() {
        showData(this.value)
    });

    showData();
});