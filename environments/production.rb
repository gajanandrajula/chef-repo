name "production"
description "For prods!"
cookbook "mycookbook", "= 0.1.0"
override_attributes({
"pci"=>{
"in_socpe" => true
}
})
