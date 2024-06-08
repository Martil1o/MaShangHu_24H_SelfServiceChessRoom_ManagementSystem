import request from '@/utils/request'

// 查询马上胡店铺列表
export function listMshStore(query) {
  return request({
    url: '/mshStore/mshStore/list',
    method: 'get',
    params: query
  })
}

// 查询马上胡店铺详细
export function getMshStore(id) {
  return request({
    url: '/mshStore/mshStore/' + id,
    method: 'get'
  })
}

// 新增马上胡店铺
export function addMshStore(data) {
  return request({
    url: '/mshStore/mshStore',
    method: 'post',
    data: data
  })
}

// 修改马上胡店铺
export function updateMshStore(data) {
  return request({
    url: '/mshStore/mshStore',
    method: 'put',
    data: data
  })
}

// 删除马上胡店铺
export function delMshStore(id) {
  return request({
    url: '/mshStore/mshStore/' + id,
    method: 'delete'
  })
}
