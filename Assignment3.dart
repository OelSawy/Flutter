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

	void getUsername() {
		print(username??"No username set");
	}

	void getEmail() {
		print(email??"No email set");
	}

	void getPassword() {
		if (password == null) {
			print("No password set");
		} else {
			String temp = "";
			for (int i = 0; i < password!.length; i++) {
				temp += "*";
			}
			print(temp);
		}
	}

	void getCustomerDetails() {
		print("Customer username is : $username");
		print("Customer email is : $email");
		print("Customer Password is confidential");
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

	void getName() {
		print(name??"No name set for product");
	}

	void getPrice() {
		print(price);
	}

	void getProductDetails() {
		print("Product name is : $name");
		print("Product price is : $price");
		print("Product is discounted : $discount");
		print("Product discount value is : $discountValue");
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
		totalPrice += product.price;
		if (product.isDiscounted()) {
			totalDiscount += product.discountValue;
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
			totalPrice -= product.price;
			totalDiscount -= product.discountValue;
			print("Product removed successfully");
		} else {
			print("Product not in cart");
		}
	}

	void showCart() {
		products.forEach((product) {
			product.getName();
		});
	}

	void showProductDetails(Product product) {
		bool flag = false;
		for (Product item in products) {
			if (item == product) {
				flag = true;
				item.getProductDetails();
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
	}
}

void main(List<String> args) {
	Customer omar = Customer();
	omar.setUsername("Sawy");
	omar.setEmail("example@gmail.com");
	omar.setPassword("Example123");
	omar.getUsername();
	omar.getEmail();
	omar.getPassword();
	print("------------------------------------------------------------------");
	omar.getCustomerDetails();
	print("------------------------------------------------------------------");

	Product product1 = Product();
	product1.setName("Digital Clock");
	product1.setPrice(250);
	product1.discountTrue(25);
	product1.getName();
	product1.getPrice();
	product1.isDiscounted();
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