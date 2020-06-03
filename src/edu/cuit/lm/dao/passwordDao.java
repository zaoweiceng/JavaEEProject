package edu.cuit.lm.dao;

import edu.cuit.lm.entity.password;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface passwordDao {

    @Insert("insert into password_inf(password, pwdCheck, note, safety) values(#{password}, #{pwdCheck}, #{note}, #{safety})")
    @Options(useGeneratedKeys=true, keyProperty="idPwd", keyColumn="idPwd")
    Integer insertInto(password pwd);

    @Select("select * from password_inf")
    List<password> findAll();

    @Select("select * from password_inf where idPwd = #{id}")
    password findPwdById(int id);

    @Delete("delete from password_inf where idPwd = #{id}")
    void delPwdById(int id);

    @Update("update password_inf set password = #{password}, pwdCheck = #{pwdCheck}, note = #{note}, safety = #{safety} where idPwd = #{idPwd}")
    void updateById(password pwd);
}
