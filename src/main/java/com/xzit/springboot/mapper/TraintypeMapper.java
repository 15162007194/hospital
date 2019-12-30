package com.xzit.springboot.mapper;

import com.xzit.springboot.entity.Traintype;
import com.xzit.springboot.entity.TraintypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TraintypeMapper {
    int countByExample(TraintypeExample example);

    int deleteByExample(TraintypeExample example);

    int deleteByPrimaryKey(Integer ptid);

    int insert(Traintype record);

    int insertSelective(Traintype record);

    List<Traintype> selectByExample(TraintypeExample example);

    Traintype selectByPrimaryKey(Integer ptid);

    int updateByExampleSelective(@Param("record") Traintype record, @Param("example") TraintypeExample example);

    int updateByExample(@Param("record") Traintype record, @Param("example") TraintypeExample example);

    int updateByPrimaryKeySelective(Traintype record);

    int updateByPrimaryKey(Traintype record);
}