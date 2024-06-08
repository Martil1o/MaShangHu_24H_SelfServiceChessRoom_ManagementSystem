import request from '@/utils/request'

// 查询订单明细列表
export function listMshOrder(query) {
  return request({
    url: '/mshOrder/mshOrder/list',
    method: 'get',
    params: query
  })
}

// 查询订单明细列表
export function listMshOrderByLoginUserID(loginUserID) {
  return request({
    url: '/mshOrder/mshOrder/listByLoginUserId?loginUserID='+loginUserID,
    method: 'get',
  })
}

// 查询订单明细详细
export function getMshOrder(id) {
  return request({
    url: '/mshOrder/mshOrder/' + id,
    method: 'get'
  })
}

// 新增订单明细
export function addMshOrder(data) {
  return request({
    url: '/mshOrder/mshOrder',
    method: 'post',
    data: data
  })
}

// 修改订单明细
export function updateMshOrder(data) {
  return request({
    url: '/mshOrder/mshOrder',
    method: 'put',
    data: data
  })
}

// 删除订单明细
export function delMshOrder(id) {
  return request({
    url: '/mshOrder/mshOrder/' + id,
    method: 'delete'
  })
}
