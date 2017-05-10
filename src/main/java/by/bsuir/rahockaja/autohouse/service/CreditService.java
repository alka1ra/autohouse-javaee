package by.bsuir.rahockaja.autohouse.service;

import by.bsuir.rahockaja.autohouse.model.Credit;

import java.util.List;

public interface CreditService {
    void addCredit(Credit credit);

    void updateCredit(Credit credit);

    void removeCredit(int id);

    Credit getCreditById(int id);

    List<Credit> listCredits();
}
