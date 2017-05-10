package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Form;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class FormDaoImpl implements FormDao {
    //TODO: beautify
    private static final Logger logger = Logger.getLogger(FormDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addForm(Form form) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(form);
        logger.info("Form successfully added. Form details: " + form);
    }

    @Override
    public void updateForm(Form form) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(form);
        logger.info("Form successfully updated. Form details: " + form);
    }

    @Override
    public void removeForm(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Form form = (Form) session.load(Form.class, new Integer(id));

        if (form != null){
            session.delete(form);
        }

        logger.info("Form successfully removed. Form details: " + form);
    }

    @Override
    public Form getFormById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Form form = (Form) session.load(Form.class, new Integer(id));

        logger.info("Form successfully loaded. Form details: " + form);
        return form;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Form> listForms() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Form> formList = session.createQuery("from Form").list();

        logger.info("List of Forms:");
        for (Form form: formList){
            logger.info(form);
        }
        return formList;
    }
}
