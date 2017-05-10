package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Credit;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class CreditDaoImpl implements CreditDao{
    //TODO: beautify
    private static final Logger logger = Logger.getLogger(CreditDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addCredit(Credit credit) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(credit);
        logger.info("Credit successfully added. Credit details: " + credit);
    }

    @Override
    public void updateCredit(Credit credit) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(credit);
        logger.info("Credit successfully updated. Credit details: " + credit);
    }

    @Override
    public void removeCredit(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Credit credit = (Credit) session.load(Credit.class, new Integer(id));

        if (credit != null){
            session.delete(credit);
        }

        logger.info("Credit successfully removed. Credit details: " + credit);
    }

    @Override
    public Credit getCreditById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Credit credit = (Credit) session.load(Credit.class, new Integer(id));

        logger.info("Credit successfully loaded. Credit details: " + credit);
        return credit;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Credit> listCredits() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Credit> creditList = session.createQuery("from Credit").list();

        logger.info("List of Credits:");
        for (Credit credit: creditList){
            logger.info(credit);
        }
        return creditList;
    }
}
