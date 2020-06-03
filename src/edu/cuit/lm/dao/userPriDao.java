package edu.cuit.lm.dao;

import edu.cuit.lm.entity.userPri;
import org.apache.ibatis.annotations.*;

public interface userPriDao {
    @Select("select * from user_pri where id = #{id}")
    userPri findUserById(int id);

    @Insert("insert into user_pri(priTy, priLv) values(#{priTy}, #{priLv})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    void insertInto(userPri user);

    @Delete("delete from user_pri where id = #{id}")
    void delUserById(int id);

    @Update("update user_pri set priTy = #{priTy}, priLv = #{priLv} where id = #{id}")
    void updateUser(userPri user);
}
