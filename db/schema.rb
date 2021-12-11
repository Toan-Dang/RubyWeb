# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_11_151609) do

  create_table "batteries", force: :cascade do |t|
    t.integer "Capacity"
    t.string "Type"
    t.string "Technology"
    t.string "Charge"
  end

  create_table "cameras", force: :cascade do |t|
    t.string "Webcam"
    t.string "FCamResolution"
    t.string "BCamResolution"
    t.string "Flash"
    t.string "Video"
    t.string "Special"
  end

  create_table "categories", force: :cascade do |t|
    t.bigint "categories_id"
    t.string "CategoryName"
    t.string "Description"
    t.string "Active"
    t.string "Picture"
    t.index ["categories_id"], name: "index_categories_on_categories_id"
  end

  create_table "connections", force: :cascade do |t|
    t.string "Type"
    t.string "WirelessCard"
    t.string "Port"
    t.string "Special"
    t.string "SIM"
    t.string "Wifi"
    t.string "GPS"
    t.string "Blutooth"
    t.string "Other"
    t.string "PhoneJack"
  end

  create_table "contents", force: :cascade do |t|
    t.string "Title"
    t.string "Content"
    t.datetime "DayRealse"
    t.string "Author"
    t.string "Special"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at"
    t.string "ShipAddress"
    t.string "City"
    t.string "State"
    t.string "Latitude"
    t.string "Longitude"
    t.float "Paid"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "Condition"
    t.datetime "DateRealse"
    t.datetime "DateEnd"
    t.string "Title"
    t.string "Detail"
    t.float "DiscountMoney"
    t.integer "DiscountAvailable"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "Product_id"
    t.string "Rank"
    t.string "Comment"
    t.integer "Rate"
    t.datetime "FeadbackDay"
    t.index ["Product_id"], name: "index_feedbacks_on_Product_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.bigint "Discount_id"
    t.string "GiftName"
    t.integer "GiftAvailable"
    t.integer "GiftAmount"
    t.string "GiftImage"
    t.index ["Discount_id"], name: "index_gifts_on_Discount_id"
  end

  create_table "graphics", force: :cascade do |t|
    t.string "NameGPU"
    t.string "GPUType"
    t.string "GPUMemory"
    t.string "Core"
  end

  create_table "images", force: :cascade do |t|
    t.bigint "Product_id"
    t.string "URL"
    t.index ["Product_id"], name: "index_images_on_Product_id"
  end

  create_table "invent_products", force: :cascade do |t|
    t.bigint "Inventory_id"
    t.bigint "Product_id"
    t.integer "ProductAvailable"
    t.index ["Inventory_id"], name: "index_invent_products_on_Inventory_id"
    t.index ["Product_id"], name: "index_invent_products_on_Product_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "TotalAmount"
    t.string "Name"
    t.string "Adress"
    t.string "City"
    t.string "State"
    t.string "Latitude"
    t.string "Longitude"
    t.boolean "IsActive"
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "Order_id"
    t.bigint "Product_id"
    t.integer "Quanlity"
    t.string "Status"
    t.float "Price"
    t.string "IDSKU"
    t.float "Discount"
    t.float "Total"
    t.boolean "Fullfilled"
    t.string "Voucher"
    t.index ["Order_id"], name: "index_order_details_on_Order_id"
    t.index ["Product_id"], name: "index_order_details_on_Product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "Customer_id"
    t.bigint "Payment_id"
    t.datetime "OrderDay"
    t.float "Freight"
    t.datetime "ShipDate"
    t.float "VoucherMoney"
    t.string "Errlog"
    t.string "Errmsg"
    t.float "Paid"
    t.datetime "PaymentDate"
    t.string "TransactStatus"
    t.string "TransactionNo"
    t.string "ResponseCode"
    t.string "SecureHash"
    t.string "Voucher"
    t.integer "InventoryId"
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
    t.index ["Payment_id"], name: "index_orders_on_Payment_id"
  end

  create_table "os", force: :cascade do |t|
    t.string "Name"
    t.string "Version"
  end

  create_table "payments", force: :cascade do |t|
    t.string "PaymentType"
    t.boolean "Allowed"
  end

  create_table "processors", force: :cascade do |t|
    t.string "Name"
    t.integer "Core"
    t.integer "Thread"
    t.float "BaseSpeed"
    t.float "MaxSpeed"
    t.float "Cache"
  end

  create_table "product_contents", force: :cascade do |t|
    t.bigint "Product_id"
    t.bigint "Content_id"
    t.index ["Content_id"], name: "index_product_contents_on_Content_id"
    t.index ["Product_id"], name: "index_product_contents_on_Product_id"
  end

  create_table "product_discounts", force: :cascade do |t|
    t.bigint "Discount_id"
    t.bigint "Product_id"
    t.index ["Discount_id"], name: "index_product_discounts_on_Discount_id"
    t.index ["Product_id"], name: "index_product_discounts_on_Product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "Camera_id"
    t.bigint "Ram_id"
    t.bigint "Rom_id"
    t.bigint "OS_id"
    t.bigint "Processor_id"
    t.bigint "Battery_id"
    t.bigint "Graphic_id"
    t.bigint "Connection_id"
    t.bigint "Structure_id"
    t.bigint "Screen_id"
    t.bigint "Sound_id"
    t.bigint "Category_id"
    t.string "Product_name"
    t.float "UnitPrice"
    t.integer "View"
    t.string "Picture"
    t.float "Raw_price"
    t.string "ProductDetail"
    t.float "MSRP"
    t.string "Version"
    t.string "Color"
    t.integer "UnitInOrder"
    t.integer "ReorderLevel"
    t.integer "CurrentOrder"
    t.string "Note"
    t.string "Special"
    t.boolean "IsDelete"
    t.index ["Battery_id"], name: "index_products_on_Battery_id"
    t.index ["Camera_id"], name: "index_products_on_Camera_id"
    t.index ["Category_id"], name: "index_products_on_Category_id"
    t.index ["Connection_id"], name: "index_products_on_Connection_id"
    t.index ["Graphic_id"], name: "index_products_on_Graphic_id"
    t.index ["OS_id"], name: "index_products_on_OS_id"
    t.index ["Processor_id"], name: "index_products_on_Processor_id"
    t.index ["Ram_id"], name: "index_products_on_Ram_id"
    t.index ["Rom_id"], name: "index_products_on_Rom_id"
    t.index ["Screen_id"], name: "index_products_on_Screen_id"
    t.index ["Sound_id"], name: "index_products_on_Sound_id"
    t.index ["Structure_id"], name: "index_products_on_Structure_id"
  end

  create_table "purchase_details", force: :cascade do |t|
    t.bigint "Purchase_id"
    t.bigint "Product_id"
    t.integer "Quantity"
    t.string "Status"
    t.float "Price"
    t.string "IDSKU"
    t.float "Total"
    t.index ["Product_id"], name: "index_purchase_details_on_Product_id"
    t.index ["Purchase_id"], name: "index_purchase_details_on_Purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "Supplier_id"
    t.bigint "Staff_id"
    t.datetime "PurchaseDay"
    t.datetime "PaymentDate"
    t.string "TransactStatus"
    t.string "TransactionNo"
    t.string "ResponeseCode"
    t.string "SecureHash"
    t.float "Paid"
    t.datetime "DateReceive"
    t.index ["Staff_id"], name: "index_purchases_on_Staff_id"
    t.index ["Supplier_id"], name: "index_purchases_on_Supplier_id"
  end

  create_table "rams", force: :cascade do |t|
    t.string "Name"
    t.float "Capacity"
    t.float "MaxRam"
    t.float "Speed"
    t.string "Type"
    t.integer "Slots"
  end

  create_table "roms", force: :cascade do |t|
    t.integer "Capacity"
    t.integer "MaxRom"
    t.string "Type"
  end

  create_table "screens", force: :cascade do |t|
    t.string "Resolution"
    t.string "Size"
    t.string "HZ"
    t.string "MaxBright"
    t.string "Specical"
    t.string "Technology"
  end

  create_table "sounds", force: :cascade do |t|
    t.string "Technology"
  end

  create_table "staffs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "UserId"
    t.datetime "WorkingDay"
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "structures", force: :cascade do |t|
    t.float "Wide"
    t.float "Weight"
    t.float "High"
    t.float "Long"
    t.string "Martirial"
    t.string "Design"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "CompanyName"
    t.string "ContactName"
    t.string "Adress"
    t.string "Phone"
    t.string "Email"
    t.string "TypeGoods"
    t.string "Notes"
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :integer, force: :cascade do |t|
    t.string "name", null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "categories", column: "categories_id"
  add_foreign_key "customers", "users"
  add_foreign_key "feedbacks", "products", column: "Product_id"
  add_foreign_key "gifts", "discounts", column: "Discount_id"
  add_foreign_key "images", "products", column: "Product_id"
  add_foreign_key "invent_products", "inventories", column: "Inventory_id"
  add_foreign_key "invent_products", "products", column: "Product_id"
  add_foreign_key "order_details", "orders", column: "Order_id"
  add_foreign_key "order_details", "products", column: "Product_id"
  add_foreign_key "orders", "customers", column: "Customer_id"
  add_foreign_key "orders", "payments", column: "Payment_id"
  add_foreign_key "product_contents", "contents", column: "Content_id"
  add_foreign_key "product_contents", "products", column: "Product_id"
  add_foreign_key "product_discounts", "discounts", column: "Discount_id"
  add_foreign_key "product_discounts", "products", column: "Product_id"
  add_foreign_key "products", "batteries", column: "Battery_id"
  add_foreign_key "products", "cameras", column: "Camera_id"
  add_foreign_key "products", "categories", column: "Category_id"
  add_foreign_key "products", "connections", column: "Connection_id"
  add_foreign_key "products", "graphics", column: "Graphic_id"
  add_foreign_key "products", "os", column: "OS_id"
  add_foreign_key "products", "processors", column: "Processor_id"
  add_foreign_key "products", "rams", column: "Ram_id"
  add_foreign_key "products", "roms", column: "Rom_id"
  add_foreign_key "products", "screens", column: "Screen_id"
  add_foreign_key "products", "sounds", column: "Sound_id"
  add_foreign_key "products", "structures", column: "Structure_id"
  add_foreign_key "purchase_details", "products", column: "Product_id"
  add_foreign_key "purchase_details", "purchases", column: "Purchase_id"
  add_foreign_key "purchases", "staffs", column: "Staff_id"
  add_foreign_key "purchases", "suppliers", column: "Supplier_id"
  add_foreign_key "staffs", "users"
end
