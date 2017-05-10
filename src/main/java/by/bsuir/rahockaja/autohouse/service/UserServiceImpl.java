//package by.bsuir.rahockaja.autohouse.service;
//
//import by.bsuir.rahockaja.autohouse.dao.RoleDao;
//import by.bsuir.rahockaja.autohouse.dao.UserDao;
//import by.bsuir.rahockaja.autohouse.model.User;
//import by.bsuir.rahockaja.autohouse.model.Role;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import org.springframework.stereotype.Service;
//import java.util.Set;
//
//
//@Service
//public class UserServiceImpl implements UserService{
//
//    @Autowired
//    private UserDao userDao;
//
//
//    @Autowired
//    private RoleDao roleDao;
//
//    @Autowired
//    private BCryptPasswordEncoder bCryptPasswordEncoder;
//
//    @Override
//    public void save(User user) {
//        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
//        Set<Role> roles = new HashSet<>();
//        roles.add(roleDao.getOne(1L));
//        user.setRoles(roles);
//        userDao.save(user);
//    }
//
//    @Override
//    public User findByUsername(String username) {
//        return userDao.findByUsername(username);
//    }
//
////
////    public void setUserDao(UserDao userDao) {
////        this.userDao = userDao;
////    }
////
////    @Override
////    @Transactional
////    public void addUser(User user) {
////        this.userDao.addUser(user);
////    }
////
////    @Override
////    @Transactional
////    public void updateUser(User user) {
////        this.userDao.updateUser(user);
////    }
////
////    @Override
////    @Transactional
////    public void removeUser(int id) {
////        this.userDao.removeUser(id);
////    }
////
////    @Override
////    @Transactional
////    public User getUserById(int id) {
////        return this.userDao.getUserById(id);
////    }
////
////    @Override
////    @Transactional
////    public List<User> listUsers() {
////        return this.userDao.listUsers();
////    }
//}
