package edu.cuit.lm.dao;

import edu.cuit.lm.entity.account;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface accountDao {

    @Insert("insert into id_inf(id, idUser, idWeb, idDate, idPwd) value(#{id}, #{idUser}, #{idWeb}, #{idDate}, #{idPwd});")
    void insertInto(account a);

     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 13:29 2020/6/3
      *根据id查询信息
      **/
    @Select("select * from id_inf where id = #{id}")
    account findAccountById(int id);

    @Select("select * from id_inf")
    List<account> findAll();

     /**
      * @Author zaoweiceng
      * @Description //TODO
      * @Date 13:30 2020/6/3
      *根据id删除信息
      **/
    @Delete("delete from id_inf where account = #{id}")
    void delAccountById(int id);

    @Update("update id_inf set idUser = #{idUser}, idWeb = #{idWeb}, idDate = #{idDate}, idPwd = #{idPwd} where id = #{id}")
    void updateById(account a);
}
