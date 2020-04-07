```
rails g model User name:text
rails g model Product sku:text
rails g model Place name:text
rails g model UserInterest user:references interestable:references{polymorphic}

# rails g model UserInterest user:references interestable_id:integer:index interestable_type:string:index
```

```
u = User.create!(name: "sakko")

10.times do |t|
  Product.create!(sku: "SKU#{t}")
  Place.create!(name: "Bangkok #{t}")
end

ui = UserInterest.new
ui.user = u
ui.interestable = Product.find(3)
ui.save

ui = UserInterest.new
ui.user = u
ui.interestable = Product.find(5)
ui.save


ui = UserInterest.new
ui.user = u
ui.interestable = Place.find(9)
ui.save
```
