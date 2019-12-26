$(document).ready(function(){

    // Sketchfab Viewer API: Localization;
    var version = '1.5.2';
    var urlid = '030da027a3dc4ae181c3dd214b92c771';

    function show3D(data) {
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
                   for (let i = 0; i < 2; i++) {
                        let content = 'letak = '+data[i].letak+'<br> keren';

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
        $.each(data, function(index, item){
            let list = '<option value="'+index+'">'+item.nomor_ruang+'</option>';
            $('#list-room').append(list);
        })
    }
    function showData()
    {
        $.get('./app/Api.php', function(data){
            data = JSON.parse(data)
            
            listRoom(data);
            show3D(data);
        });
    }

    showData();
});