package ukdw.com.progmob_2020.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Mahasiswa {

    @SerializedName("id")
    @Expose
    private String id;

    @SerializedName("nama")
    @Expose
    private String nama;

    @SerializedName("nim")
    @Expose
    private String nim;

    @SerializedName("noTlp")
    @Expose
    private String noTelp;

    @SerializedName("alamat")
    @Expose
    private String alamat;

    @SerializedName("email")
    @Expose
    private String email;

    @SerializedName("foto")
    @Expose
    private String foto;

    @SerializedName("nim_progmob")
    @Expose
    private String nim_progmob;

    public Mahasiswa(String nama, String nim, String noTelp) {
        this.nama = nama;
        this.nim = nim;
        this.noTelp = noTelp;

    }
    public Mahasiswa(String id, String nama, String nim, String noTelp, String alamat, String email, String foto, String nim_progmob) {
        this.id = id;
        this.nama = nama;
        this.nim = nim;
        this.noTelp = noTelp;
        this.alamat = alamat;
        this.email = email;
        this.foto = foto;
        this.nim_progmob = nim_progmob;
    }

    public Mahasiswa(String nama, String nim, String noTelp, String alamat, String email, String foto, String nim_progmob) {
        this.nama = nama;
        this.nim = nim;
        this.noTelp = noTelp;
        this.alamat = alamat;
        this.email = email;
        this.foto = foto;
        this.nim_progmob = nim_progmob;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getNim_progmob() {
        return nim_progmob;
    }

    public void setNim_progmob(String nim_progmob) {
        this.nim_progmob = nim_progmob;
    }
}
