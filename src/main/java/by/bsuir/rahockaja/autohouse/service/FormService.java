package by.bsuir.rahockaja.autohouse.service;

import by.bsuir.rahockaja.autohouse.model.Form;

import java.util.List;

public interface FormService {
    void addForm(Form form);

    void updateForm(Form form);

    void removeForm(int id);

    Form getFormById(int id);

    List<Form> listForms();
}
