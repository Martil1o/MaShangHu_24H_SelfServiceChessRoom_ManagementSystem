package com.ruoyi.mshRoom.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.mshRoom.domain.MshStoreRoom;
import com.ruoyi.mshRoom.mapper.MshRoomMapper;
import com.ruoyi.mshRoom.domain.MshRoom;
import com.ruoyi.mshRoom.service.IMshRoomService;

/**
 * 房间管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
@Service
public class MshRoomServiceImpl implements IMshRoomService 
{
    @Autowired
    private MshRoomMapper mshRoomMapper;

    /**
     * 查询房间管理
     * 
     * @param id 房间管理主键
     * @return 房间管理
     */
    @Override
    public MshRoom selectMshRoomById(Long id)
    {
        return mshRoomMapper.selectMshRoomById(id);
    }

    /**
     * 查询房间管理列表
     * 
     * @param mshRoom 房间管理
     * @return 房间管理
     */
    @Override
    public List<MshRoom> selectMshRoomList(MshRoom mshRoom)
    {
        return mshRoomMapper.selectMshRoomList(mshRoom);
    }

    /**
     * 新增房间管理
     * 
     * @param mshRoom 房间管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertMshRoom(MshRoom mshRoom)
    {
        int rows = mshRoomMapper.insertMshRoom(mshRoom);
        insertMshStoreRoom(mshRoom);
        return rows;
    }

    /**
     * 修改房间管理
     * 
     * @param mshRoom 房间管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateMshRoom(MshRoom mshRoom)
    {
        mshRoomMapper.deleteMshStoreRoomByRoomId(mshRoom.getId());
        insertMshStoreRoom(mshRoom);
        return mshRoomMapper.updateMshRoom(mshRoom);
    }

    /**
     * 批量删除房间管理
     * 
     * @param ids 需要删除的房间管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshRoomByIds(Long[] ids)
    {
        mshRoomMapper.deleteMshStoreRoomByRoomIds(ids);
        return mshRoomMapper.deleteMshRoomByIds(ids);
    }

    /**
     * 删除房间管理信息
     * 
     * @param id 房间管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteMshRoomById(Long id)
    {
        mshRoomMapper.deleteMshStoreRoomByRoomId(id);
        return mshRoomMapper.deleteMshRoomById(id);
    }

    /**
     * 新增马上胡店铺房间关联信息
     * 
     * @param mshRoom 房间管理对象
     */
    public void insertMshStoreRoom(MshRoom mshRoom)
    {
        List<MshStoreRoom> mshStoreRoomList = mshRoom.getMshStoreRoomList();
        Long id = mshRoom.getId();
        if (StringUtils.isNotNull(mshStoreRoomList))
        {
            List<MshStoreRoom> list = new ArrayList<MshStoreRoom>();
            for (MshStoreRoom mshStoreRoom : mshStoreRoomList)
            {
                mshStoreRoom.setRoomId(id);
                list.add(mshStoreRoom);
            }
            if (list.size() > 0)
            {
                mshRoomMapper.batchMshStoreRoom(list);
            }
        }
    }
}
