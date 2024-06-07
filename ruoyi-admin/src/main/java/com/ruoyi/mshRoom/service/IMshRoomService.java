package com.ruoyi.mshRoom.service;

import java.util.List;
import com.ruoyi.mshRoom.domain.MshRoom;

/**
 * 房间管理Service接口
 * 
 * @author ruoyi
 * @date 2024-06-06
 */
public interface IMshRoomService 
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
     * 批量删除房间管理
     * 
     * @param ids 需要删除的房间管理主键集合
     * @return 结果
     */
    public int deleteMshRoomByIds(Long[] ids);

    /**
     * 删除房间管理信息
     * 
     * @param id 房间管理主键
     * @return 结果
     */
    public int deleteMshRoomById(Long id);
}
