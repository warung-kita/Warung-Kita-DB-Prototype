package com.pentagon.warungkita.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import static javax.persistence.FetchType.EAGER;
import static javax.persistence.FetchType.LAZY;

@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long orderId;

    @ManyToOne(fetch = FetchType.LAZY, targetEntity = User.class)
    private User userId;

    private Number jumlahBarang;
    private String OrderStatus;
    private Date tanggalOrder;

    @ManyToMany(fetch = FetchType.LAZY)
    private Collection<Produk> produks = new ArrayList<>();

    @ManyToOne(fetch = FetchType.LAZY, targetEntity = JasaPengiriman.class)
    private JasaPengiriman jasaPengirimanId;

    @ManyToOne(fetch = FetchType.LAZY, targetEntity = JenisPembayaran.class)
    private JenisPembayaran jenisPembayaranId;
}
