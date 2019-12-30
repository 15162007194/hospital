package com.xzit.springboot.mapper;

import com.xzit.springboot.entity.Term;
import com.xzit.springboot.entity.TermExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TermMapper {
    int countByExample(TermExample example);

    int deleteByExample(TermExample example);

    int deleteByPrimaryKey(Integer termid);

    int insert(Term record);

    int insertSelective(Term record);

    List<Term> selectByExample(TermExample example);

    Term selectByPrimaryKey(Integer termid);

    int updateByExampleSelective(@Param("record") Term record, @Param("example") TermExample example);

    int updateByExample(@Param("record") Term record, @Param("example") TermExample example);

    int updateByPrimaryKeySelective(Term record);

    int updateByPrimaryKey(Term record);
}