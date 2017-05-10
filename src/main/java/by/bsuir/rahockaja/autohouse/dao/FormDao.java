package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Form;

import java.util.List;

public interface FormDao {
    void addForm(Form form);

    void updateForm(Form form);

    void removeForm(int id);

    Form getFormById(int id);

    List<Form> listForms();
}
