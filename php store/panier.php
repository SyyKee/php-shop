<?php

function panier($id,$image,$nom,$prix){
$panier = "<div class=\"row\">
									<div class=\"col-md-3\">$id</div>
									<div class=\"col-md-3\"><img src=\"$image\" style=\"width:22px; height:25px;\"/></div>
									<div class=\"col-md-3\">$nom</div>
									<div class=\"col-md-3\">$prix $</div>
								</div>";
                                
                    echo $panier;    
}
?>