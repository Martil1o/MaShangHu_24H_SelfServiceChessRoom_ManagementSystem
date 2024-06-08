import request from '@/utils/request'

// 查询房间管理列表
export function listMshRoom(query) {
  return request({
    url: '/mshRoom/mshRoom/list',
    method: 'get',
    params: query
  })
}

// 查询房间管理详细
export function getMshRoom(id) {
  return request({
    url: '/mshRoom/mshRoom/' + id,
    method: 'get'
  })
}

// 新增房间管理
export function addMshRoom(data) {
  return request({
    url: '/mshRoom/mshRoom',
    method: 'post',
    data: data
  })
}

// 修改房间管理
export function updateMshRoom(data) {
  return request({
    url: '/mshRoom/mshRoom',
    method: 'put',
    data: data
  })
}

// 删除房间管理
export function delMshRoom(id) {
  return request({
    url: '/mshRoom/mshRoom/' + id,
    method: 'delete'
  })
}
