import request from '@/utils/request'

// 查询广告管理列表
export function listAd(query) {
  return request({
    url: '/ad/ad/list',
    method: 'get',
    params: query
  })
}

// 查询广告管理详细
export function getAd(id) {
  return request({
    url: '/ad/ad/' + id,
    method: 'get'
  })
}

// 新增广告管理
export function addAd(data) {
  return request({
    url: '/ad/ad',
    method: 'post',
    data: data
  })
}

// 修改广告管理
export function updateAd(data) {
  return request({
    url: '/ad/ad',
    method: 'put',
    data: data
  })
}

// 删除广告管理
export function delAd(id) {
  return request({
    url: '/ad/ad/' + id,
    method: 'delete'
  })
}
