package id.ac.ui.cs.advprog.youkosoproduct.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(unique = true, length = 256, nullable = false, name = "product_name")
    private String productName;

    @Column(name = "product_price", nullable = false)
    private int productPrice;

    @Column(name = "product_stock", nullable = false)
    private int productStock;

    @Column(name = "product_discount", nullable = true)
    private Integer productDiscount;

    @Column(length = 512, nullable = false, name = "product_description")
    private String productDescription;

    @Column(name = "product_image", nullable = false)
    private String productImage;

    public int finalPrice(){
        return this.productPrice - (this.productPrice * this.productDiscount / 100);
    }

    public Product(int productId) {
        this.id = productId;
    }

    public Product() {
    }
}