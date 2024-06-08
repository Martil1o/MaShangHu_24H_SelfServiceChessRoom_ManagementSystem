import request from '@/utils/request'

// 查询财务明细列表
export function listFinance(query) {
  return request({
    url: '/finance/finance/list',
    method: 'get',
    params: query
  })
}

// 查询财务明细详细
export function getFinance(id) {
  return request({
    url: '/finance/finance/' + id,
    method: 'get'
  })
}

// 新增财务明细
export function addFinance(data) {
  return request({
    url: '/finance/finance',
    method: 'post',
    data: data
  })
}

// 修改财务明细
export function updateFinance(data) {
  return request({
    url: '/finance/finance',
    method: 'put',
    data: data
  })
}

// 删除财务明细
export function delFinance(id) {
  return request({
    url: '/finance/finance/' + id,
    method: 'delete'
  })
}
