import request from '@/utils/request'

// 查询店铺资产列表
export function listWallet(query) {
  return request({
    url: '/mshWallet/wallet/list',
    method: 'get',
    params: query
  })
}

// 查询店铺资产详细
export function getWallet(id) {
  return request({
    url: '/mshWallet/wallet/' + id,
    method: 'get'
  })
}

// 新增店铺资产
export function addWallet(data) {
  return request({
    url: '/mshWallet/wallet',
    method: 'post',
    data: data
  })
}

// 修改店铺资产
export function updateWallet(data) {
  return request({
    url: '/mshWallet/wallet',
    method: 'put',
    data: data
  })
}

// 删除店铺资产
export function delWallet(id) {
  return request({
    url: '/mshWallet/wallet/' + id,
    method: 'delete'
  })
}
