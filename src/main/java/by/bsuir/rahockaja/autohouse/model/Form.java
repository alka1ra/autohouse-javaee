package by.bsuir.rahockaja.autohouse.model;

import javax.persistence.*;

@Entity
@Table(name = "forms")
public class Form {
  @Id
  @Column(name = "ID")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(name = "email")
  private String email;

  @Column(name = "status")
  private String status;

  @Column(name = "message_text")
  private String messageText;

  @Column(name = "name")
  private String name;

  @Column(name = "phone")
  private String phone;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getMessageText() {
    return messageText;
  }

  public void setMessageText(String messageText) {
    this.messageText = messageText;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Form)) return false;

        Form form = (Form) o;

        if (id != form.id) return false;
        if (!email.equals(form.email)) return false;
        if (!status.equals(form.status)) return false;
        if (!messageText.equals(form.messageText)) return false;
        if (!name.equals(form.name)) return false;
        return phone.equals(form.phone);
    }

    @Override
    public String toString() {
        return "Form{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", status='" + status + '\'' +
                ", messageText='" + messageText + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
