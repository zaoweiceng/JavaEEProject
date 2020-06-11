package edu.cuit.lm.dao;

import edu.cuit.lm.entity.userInf;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface userInfDao {

    @Select("select * from user_inf where idUser = #{id}")
    userInf findUserById(int id);

    @Insert("insert into user_inf(realname, sex, birthday, tel, email, pWd) values(#{realname}, #{sex}, #{birthday}, #{tel}, #{email}, #{pWd})")
    @Options(useGeneratedKeys=true, keyProperty="idUser", keyColumn="idUser")
    void insertInto(userInf user);

    @Delete("delete from user_inf where idUser = #{id}")
    void delUserById(int id);

    @Update("update user_inf set  realname = #{realname}, sex = #{sex}, birthday = #{birthday}, tel = #{tel}, email = #{email}, pWd = #{pWd} where idUser = #{idUser}")
    void updateUser(userInf user);

    @Select("select * from user_inf where realname like #{name}")
    List<userInf> findUserByName(String name);

    @Select("select * from user_inf")
    List<userInf> findAll();
}
