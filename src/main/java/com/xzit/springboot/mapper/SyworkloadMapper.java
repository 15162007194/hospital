package com.xzit.springboot.mapper;

import com.xzit.springboot.entity.Syworkload;
import com.xzit.springboot.entity.SyworkloadExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SyworkloadMapper {
    int countByExample(SyworkloadExample example);

    int deleteByExample(SyworkloadExample example);

    int deleteByPrimaryKey(Integer syid);

    int insert(Syworkload record);

    int insertSelective(Syworkload record);

    List<Syworkload> selectByExample(SyworkloadExample example);

    Syworkload selectByPrimaryKey(Integer syid);

    int updateByExampleSelective(@Param("record") Syworkload record, @Param("example") SyworkloadExample example);

    int updateByExample(@Param("record") Syworkload record, @Param("example") SyworkloadExample example);

    int updateByPrimaryKeySelective(Syworkload record);

    int updateByPrimaryKey(Syworkload record);
}