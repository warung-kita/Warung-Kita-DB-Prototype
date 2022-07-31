package com.pentagon.warungkita.model;

import javax.persistence.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.Collection;

import static javax.persistence.FetchType.EAGER;
import static javax.persistence.FetchType.LAZY;

@Entity
public class Produk {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long produkId;
    private String produkName;
    private Number price;
    private Number stokProduk;

    @Column(name = "image", unique = false, nullable = false, length = 100000)
    private byte[] image;

    @ManyToMany(fetch = FetchType.LAZY)
    private Collection<Category> categories = new ArrayList<>();
}
