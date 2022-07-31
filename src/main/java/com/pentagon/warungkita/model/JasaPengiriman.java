package com.pentagon.warungkita.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class JasaPengiriman {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long jasaPengirimanId;
    private String jasaPengirimanName;
}
