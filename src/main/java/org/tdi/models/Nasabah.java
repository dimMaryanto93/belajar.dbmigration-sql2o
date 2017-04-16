package org.tdi.models;

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
    private Integer id;
    private String nomorRegister;
    private String nama;
    private Bpr bpr;
    private String alamat;
}
