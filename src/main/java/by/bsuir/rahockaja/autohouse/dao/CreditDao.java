package by.bsuir.rahockaja.autohouse.dao;

import by.bsuir.rahockaja.autohouse.model.Credit;

import java.util.List;

public interface CreditDao {
    void addCredit(Credit credit);

    void updateCredit(Credit credit);

    void removeCredit(int id);

    Credit getCreditById(int id);

    List<Credit> listCredits();
}
