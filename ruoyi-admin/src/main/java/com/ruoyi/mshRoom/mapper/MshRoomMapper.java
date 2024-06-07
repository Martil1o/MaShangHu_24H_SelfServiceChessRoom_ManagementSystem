package com.ruoyi.mshRoom.mapper;

import java.util.List;
import com.ruoyi.mshRoom.domain.MshRoom;
import com.ruoyi.mshRoom.domain.MshStoreRoom;

/**
 * 房间管理Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public interface MshRoomMapper 
{
    /**
     * 查询房间管理
     * 
     * @param id 房间管理主键
     * @return 房间管理
     */
    public MshRoom selectMshRoomById(Long id);

    /**
     * 查询房间管理列表
     * 
     * @param mshRoom 房间管理
     * @return 房间管理集合
     */
    public List<MshRoom> selectMshRoomList(MshRoom mshRoom);

    /**
     * 新增房间管理
     * 
     * @param mshRoom 房间管理
     * @return 结果
     */
    public int insertMshRoom(MshRoom mshRoom);

    /**
     * 修改房间管理
     * 
     * @param mshRoom 房间管理
     * @return 结果
     */
    public int updateMshRoom(MshRoom mshRoom);

    /**
     * 删除房间管理
     * 
     * @param id 房间管理主键
     * @return 结果
     */
    public int deleteMshRoomById(Long id);

    /**
     * 批量删除房间管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshRoomByIds(Long[] ids);

    /**
     * 批量删除马上胡店铺房间关联
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMshStoreRoomByRoomIds(Long[] ids);
    
    /**
     * 批量新增马上胡店铺房间关联
     * 
     * @param mshStoreRoomList 马上胡店铺房间关联列表
     * @return 结果
     */
    public int batchMshStoreRoom(List<MshStoreRoom> mshStoreRoomList);
    

    /**
     * 通过房间管理主键删除马上胡店铺房间关联信息
     * 
     * @param id 房间管理ID
     * @return 结果
     */
    public int deleteMshStoreRoomByRoomId(Long id);
}
