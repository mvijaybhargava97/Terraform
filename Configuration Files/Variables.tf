variable "appsettings" {
    type    = map(string)
    default = {
        Key1 = "Value"
        Key2 = "Value2"         
    }
}
variable "func-names" {
    type    = set(string)
    default = ["vijay-funcA","vijay-funcB","vijay-funcC"]
}