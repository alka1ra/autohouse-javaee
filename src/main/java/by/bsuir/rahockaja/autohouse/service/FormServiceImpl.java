package by.bsuir.rahockaja.autohouse.service;

import by.bsuir.rahockaja.autohouse.dao.FormDao;
import by.bsuir.rahockaja.autohouse.model.Form;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class FormServiceImpl implements FormService{
    private FormDao formDao;

    public void setFormDao(FormDao formDao) {
        this.formDao = formDao;
    }

    @Override
    @Transactional
    public void addForm(Form form) {
        this.formDao.addForm(form);
    }

    @Override
    @Transactional
    public void updateForm(Form form) {
        this.formDao.updateForm(form);
    }

    @Override
    @Transactional
    public void removeForm(int id) {
        this.formDao.removeForm(id);
    }

    @Override
    @Transactional
    public Form getFormById(int id) {
        return this.formDao.getFormById(id);
    }

    @Override
    @Transactional
    public List<Form> listForms() {
        return this.formDao.listForms();
    }
}
