package org.fisa.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by dimmaryanto93 on 16/04/17.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Nasabah {
    private String nomorRegister;
    private String kodeBpr;
    private String nama;
    private String alamat;
}
