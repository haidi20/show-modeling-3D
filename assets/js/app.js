$(document).ready(function(){
    // Sketchfab Viewer API: Localization;
    var version = '1.5.2';
    var setFirstTime = 1

    function show3D(rooms, floor) {
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
                        let content = 'Letak = '+rooms[i].letak+'<br>';
                        content += 'Nomor Hak = '+rooms[i].nomor_hak+'<br>';
                        content += 'Tanggal Lahir= '+rooms[i].tanggal_lahir+'<br>';
                        content += 'Luas = '+rooms[i].luas+'<br>';
                        content += 'Nomor Ruang = '+rooms[i].nomor_ruang+'<br>';

                        api.updateAnnotation(i, {
                            title: rooms[i].nama_pemegang,
                            content: content
                        });                    
                   }
                });

                $(document).on('change', '#list-room', function(){
                    let value = this.value;
                    api.gotoAnnotation(value, { preventCameraAnimation: true, preventCameraMove: false });
                    insertDetailRoom(rooms, value);
                });

                function insertDetailRoom(rooms, value)
                {
                    $('.rights_number').html(rooms[value].nomor_hak);
                    $('.name_user').html(rooms[value].nama_pemegang);
                    $('.nik').html(rooms[value].nik);
                    $('.date_born').html(rooms[value].tanggal_lahir);
                    $('.large').html(rooms[value].luas);
                    $('.position').html(rooms[value].letak);
                    $('.number_room').html(rooms[value].nomor_ruang);
                    $('.coordinate_x').html(rooms[value].kordinat_x);
                    $('.coordinate_y').html(rooms[value].kordinat_y);
                }
            });
        };

        let urlid = selectFloor(floor)
        client.init(urlid, {
            success: success,
            error: error,
            autostart: 1,
            preload: 1
        });
    }
    function selectFloor(floor)
    {
        var urlid = [];
        urlid ["LANTAI 1"] = "5a7d2365ba5643d8af283eb9af424c90";
        urlid ["LANTAI 2"] = "c33c9ad09a1f4a8095163da7c01222e6";
        urlid ["LANTAI 3"] = "54ebec3b832d4b18b51c47cfb05377b1";
        urlid ["LANTAI 4"] = "e4c145eb5e1e4cdbaf58234e31916d44";

        return urlid[floor];
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
             list += '<option value="'+item.position+'" style="text-align:center">'+item.position+'</option>';
        })

        $('#list-floor')
        .append(list)
    }
    function showData(floor = "LANTAI 1")
    {
        $.get('./app/Api.php?floor='+floor, function(data){
            var data = JSON.parse(data)
            var rooms = data.data
            var getAllFloor = data.getAllFloor
            
            listRoom(rooms);
            show3D(rooms, floor);

            if(setFirstTime == 1){
                listFloor(getAllFloor);
            }
                
        });
    }
    $(document).on('change', '#list-floor', function() {
        setFirstTime = 0
        showData(this.value)
    });

    showData();
});