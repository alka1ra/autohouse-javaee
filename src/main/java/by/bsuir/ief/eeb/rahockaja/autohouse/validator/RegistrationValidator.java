package by.bsuir.ief.eeb.rahockaja.autohouse.validator;

import by.bsuir.ief.eeb.rahockaja.autohouse.model.user.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class RegistrationValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Поле не должно быть пустым!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "Поле не должно быть пустым!");
    }

}