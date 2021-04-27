<script src="{{ asset('assets/js/jquery.js') }}"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/plugins.js') }}"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="{{ asset('assets/js/init.js') }}"></script>

{{-- Chargement du script qui se trouve dans les assets(dossier public) --}}
<script src="{{ asset('js/app.js')}}"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

{{-- Images du header qui tournent --}}
<script type="text/javascript">
$(document).ready(function() {
    'use strict';
    jQuery('#headerwrap').backstretch([
        "assets/img/bg/douceur.jpg",
        // "assets/img/bg/business2.jpg",
        // "assets/img/bg/business3.jpg"
    ], {
        duration: 8000,
        fade: 500
    });
});
</script>
