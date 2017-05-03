package by.bsuir.ief.eeb.rahockaja.autohouse.model;

public class Form_status {
  private Long form_id;
  private String status;
  private String operator_comment;

  public Long getForm_id() {
    return form_id;
  }

  public void setForm_id(Long form_id) {
    this.form_id = form_id;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getOperator_comment() {
    return operator_comment;
  }

  public void setOperator_comment(String operator_comment) {
    this.operator_comment = operator_comment;
  }
}
