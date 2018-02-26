name "webserver"
description "Web Server"
run_list "role[base]", "recipe[mycookbook]"
default_attributes({
"apache" => {
"sites" => {
"admin" => {
"port" => 8000
},
"bears"=>{
"port"=>8081
}
}
}
})
