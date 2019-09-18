# README

#### SUPP2U BACKEND DEPLOYMENT: https://supp2udev.herokuapp.com <br>

#### User Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| POST   | `/users`                             | Create a user's account.                     |
| GET    | `/users`                             | Returns all users in the database.           |
| GET    | `/users/:id`                         | Returns a user associated with an id.        |
| PUT    | `/users/:id`                         | Modify an existing user.                     |
| DELETE | `/users/:id`                         | Delete an existing user.                     |
| GET    | `/users/:user_id/customers`          | Returns a user's customer info.              |
| POST   | `/users:/user_id/customers`          | Allows a user to create/be a customer.       |
| GET    | `/users/:user_id/businesses`         | Returns a user's business info.              |
| POST   | `/users/:user_id/businesses`         | Allows a user to create/be a business.       |


#### Customer Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/customers/`                        | Returns all customers in the database.       |
| GET    | `/customers/:id`                     | Returns a customer associated with an id.    |
| PUT    | `/customers/:id`                     | Modify an existing customer.                 |
| DELETE | `/customers/:id`                     | Delete an existing customer.                 |
| GET    | `/customers/:customer_id/carts`      | Returns a customer's active cart.            |
| POST   | `/customers/:customer_id/carts`      | Creates a cart if one is not active.         |
| GET    | `/customers/:customer_id/orders`     | Returns a customer's orders.                 |
| POST   | `/customers/:customer_id/orders`     | Creates an order populated with cart items.  |
| GET    | `/customers/:customer_id/reviews`    | Returns all customer reviews.                |
| POST   | `/customers/:customer_id/reviews`    | Allows a customer to post a review.          |


#### Review Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/reviews/:id`                       | Returns a review associated with an id.      |
| PUT    | `/reviews/:id`                       | Modify an existing review.                   |
| DELETE | `/reviews/:id`                       | Delete an existing review.                   |


#### Cart Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/carts/:id`                         | Returns a cart associated with an id.        |
| GET    | `/carts/:id/itemfetch`               | Returns all items assiciated with a cart.    |
| PUT    | `/carts/:id`                         | Modify an existing cart.                     |
| PUT    | `/carts/:id/add`                     | Allows an item to be added to a cart.        |


#### Order Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/orders`                            | Returns all orders in the database.          |
| GET    | `/orders/:id`                        | Returns an order associated with an id.      |
| PUT    | `/orders/:id`                        | Modify an existing order.                    |
| DELETE | `/orders/:id`                        | Delete an existing order.                    |
| GET    | `/orders/:order_id/orderitems`       | Returns all of the items on an order.        |
| POST   | `/orders/:order_id/orderitems`       | Allows an item to be created for an order.   |
| POST   | `/orders/:id/ship`                   | Allows a pending order to be shipped.        |


#### OrderItem Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/orderitems`                        | Returns all orderitems in the database.      |
| GET    | `/orderitems/:id`                    | Returns an orderitem associated with an id.  |
| PUT    | `/orderitems/:id`                    | Modify an existing orderitem.                |
| DELETE | `/orderitems/:id`                    | Delete an existing orderitem.                |


#### Business Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/businesses/`                       | Returns all businesses in the database.      |
| GET    | `/businesses/:id`                    | Returns a business associated with an id     |
| PUT    | `/businesses/:id`                    | Modify an existing business profile.         |
| DELETE | `/businesses/:id`                    | Delete an existing business.                 |
| GET    | `/businesses/:business_id/menus`     | Returns a menu associated with a business.   |
| POST   | `/businesses/:business_id/menus`     | Allows a business to create a menu.          |
| GET    | `/businesses/:business_id/schedules` | Returns a businesses schedule.               |
| POST   | `/businesses/:business_id/schedules` | Allows a business to create a schedule.      |
| GET    | `/businesses/:business_id/reviews`   | Returns the reviews on a business.           | 
| GET    | `/businesses/:business_id/orders`    | Returns the orders placed on a business.     |
| GET    | `/businesses/:id/ratings`            | Returns the total rating for a business.     |


#### Schedules Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/schedules/:id`                     | Returns a schedule associated with an id     |
| PUT    | `/schedules/:id`                     | Modify an existing schedule.                 |
| DELETE | `/schedules/:id`                     | Delete an existing schedule.                 |


#### Menu Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/menus/:menu_id/items`              | Returns items associated with a menu.        |
| POST   | `/menus/:menu_id/items`              | Allows items to be posted to a menu.         |
| GET    | `/menus/:id`                         | Returns a menu associated with an id.        |
| PUT    | `/menus/:id`                         | Modify an existing menu.                     |
| DELETE | `/menus/:id`                         | Delete an existing menu.                     |


#### Item Routes
| Method | Endpoint                             | Description                                  |
| ------ | ------------------------------------ | -------------------------------------------- |
| GET    | `/items/:id`                         | Returns an item associated with an id        |
| PUT    | `/items/:id`                         | Modify an existing item.                     |
| DELETE | `/items/:id`                         | Delete an existing item.                     |


## Actions

### Users

### Reviews



### Carts

#### index -->
<pre>If a valid customer_id is in the params it returns that customer's active cart, else it returns all of the carts in the db.</pre>

#### create -->
<pre>Returns the customer's active cart, or create's a new active cart if they do not have one.</pre>

#### show -->
<pre>Returns a cart based on the provided ID.</pre>

#### add -->
<pre>Add's an item to a cart.</pre>

#### itemfetch -->
<pre>Returns all of the items within a customer's cart.</pre>

### Orders 

#### index -->
<pre>If a customer's ID is present in the params, it returns all of that customer's orders.
     If a businesses' ID is present in the params, it returns all of that businesses' orders.
     If no Id is present, it returns all orders in the database.</pre>

#### show --> 
<pre>Returns a business by it's ID.</pre>

#### create --> 
<pre>Transforms a customer's cart into an order. It take's all of the items within a customer's cart and create's 
     new orderitems for the order aswell.</pre>

#### update --> 
<pre>Allows an order's status to be updated.</pre>

#### destroy --> 
<pre>Deletes an order from the database.</pre>

#### ship --> 
<pre>Checks to see if an order meets the criteria required to be shipped off. If so, it is shipped.</pre>

### OrderItems

### Customers

### Businesses

### Schedules

### Menus

### Items


* ...
