<?php
function contenu ($nom,$prix,$categorie,$image,$i){
    
     
    
     
    
     $element = "  <meta charset=\"UTF-8\">
                     <div class=\"col-md-4\">
                            
                            
                            
							<div class=\"panel panel-info\">
								<div class=\"panel-heading\">$categorie : $nom </div>
								<div class=\"panel-body\">
									<img src=\"$image\" style=\"width:220px; height:250px;\"/>
								</div>
								<div class=\"panel-heading\"> Prix :$prix $   
									<button name =\"panier$i\" style=\"float:right;\" class=\"btn btn-danger btn-xs\">Ajouter au panier</button>
								</div>
							</div>
                            
						</div> 
                        ";
    
       
    echo $element; 
   
    
    

}
?>