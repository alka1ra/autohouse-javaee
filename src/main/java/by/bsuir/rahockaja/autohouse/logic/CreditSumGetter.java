package by.bsuir.rahockaja.autohouse.logic;

import by.bsuir.rahockaja.autohouse.model.Credit;
import org.springframework.stereotype.Component;

@Component
public class CreditSumGetter {
    public static double getSumPerMonth(Credit credit, double sum){
        return credit.getPercent() * sum;
    }
    public static double getSumPerYear(double sumPerMonth){
        return 12*sumPerMonth;
    }
}