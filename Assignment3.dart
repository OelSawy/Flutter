class Customer {
	String? username;
	String? email;
	String? password;

	void setUsername(String username) {
		this.username = username;
	}

	void setEmail(String email) {
		this.email = email;
	}

	void setPassword(String password) {
		this.password = password;
	}

	String getUsername() {
		return(username??"No username set");
	}

	String getEmail() {
		return(email??"No email set");
	}

	String getPassword() {
		if (password == null) {
			return("No password set");
		} else {
			String temp = "";
			for (int i = 0; i < password!.length; i++) {
				temp += "*";
			}
			return(temp);
		}
	}

	String getCustomerDetails() {
		return ("Customer username is : $username \nCustomer email is : $email \nCustomer Password is confidential");
	}
}

class Product {
	String? name;
	double price = 0;
	bool discount = false;
	double discountValue = 0;

	void setName(String name) {
		this.name = name;
	}

	void setPrice(double price) {
		this.price = price;
	}

	void discountTrue(double discountValue) {
		discount = true;
		this.discountValue = discountValue;
	}

	void discountFalse() {
		discount = false;
		discountValue = 0;
	}

	String getName() {
		return(name??"No name set for product");
	}

	double getPrice() {
		return(price);
	}

  double getDiscountValue() {
		return(discountValue);
	}

	String getProductDetails() {
		return("Product name is : $name \nProduct price is : $price \nProduct is discounted : $discount \nProduct discount value is : $discountValue");
	}

	bool isDiscounted() {
		return discount;
	}
}

class Cart {
	int nItems = 0;
	double totalPrice = 0;
	double totalDiscount = 0;
	List<Product> products = [];

	void addProduct(Product product) {
		products.add(product);
		nItems++;
		totalPrice += product.getPrice();
		if (product.isDiscounted()) {
			totalDiscount += product.getDiscountValue();
		}
		print("Product added successfully");
	}

	void removeProduct(Product product) {
		bool flag = false;
		int? index;
		for (Product item in products) {
			if (item == product) {
				flag = true;
				index = products.indexOf(item);
			}
		}
		if (flag) {
			products.removeAt(index!);
			nItems--;
			totalPrice -= product.getPrice();
			totalDiscount -= product.getDiscountValue();
			print("Product removed successfully");
		} else {
			print("Product not in cart");
		}
	}

	void showCart() {
		products.forEach((product) {
			print(product.getName());
		});
	}

	void showProductDetails(Product product) {
		bool flag = false;
		for (Product item in products) {
			if (item == product) {
				flag = true;
				print(item.getProductDetails());
			}
		}
		if (!flag) {
			print("Product not in cart");
		}
	}

	void checkout() {
		products.clear();
		nItems = 0;
		totalPrice = 0;
		totalDiscount = 0;
    print("Cart cleared");
	}
}

void main(List<String> args) {
	Customer omar = Customer();
	omar.setUsername("Sawy");
	omar.setEmail("example@gmail.com");
	omar.setPassword("Example123");
	print(omar.getUsername());
	print(omar.getEmail());
	print(omar.getPassword());
	print("------------------------------------------------------------------");
	print(omar.getCustomerDetails());
	print("------------------------------------------------------------------");

	Product product1 = Product();
	product1.setName("Digital Clock");
	product1.setPrice(250);
	product1.discountTrue(25);
	print(product1.getName());
	print(product1.getPrice());
	print(product1.isDiscounted());
	print("------------------------------------------------------------------");
	product1.getProductDetails();
	print("------------------------------------------------------------------");

	Cart cart1 = Cart();
	cart1.addProduct(product1);
	cart1.showProductDetails(product1);
	print("------------------------------------------------------------------");
	cart1.showCart();
	print("------------------------------------------------------------------");
	cart1.removeProduct(product1);
	cart1.showCart();
}