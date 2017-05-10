package by.bsuir.rahockaja.autohouse.service;

import by.bsuir.rahockaja.autohouse.dao.CreditDao;
import by.bsuir.rahockaja.autohouse.model.Credit;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class CreditServiceImpl implements CreditService{
    private CreditDao creditDao;

    public void setCreditDao(CreditDao creditDao) {
        this.creditDao = creditDao;
    }

    @Override
    @Transactional
    public void addCredit(Credit credit) {
        this.creditDao.addCredit(credit);
    }

    @Override
    @Transactional
    public void updateCredit(Credit credit) {
        this.creditDao.updateCredit(credit);
    }

    @Override
    @Transactional
    public void removeCredit(int id) {
        this.creditDao.removeCredit(id);
    }

    @Override
    @Transactional
    public Credit getCreditById(int id) {
        return this.creditDao.getCreditById(id);
    }

    @Override
    @Transactional
    public List<Credit> listCredits() {
        return this.creditDao.listCredits();
    }

}
