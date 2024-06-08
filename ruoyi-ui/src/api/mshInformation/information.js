import request from '@/utils/request'

// 查询开店审核列表
export function listInformation(query) {
  return request({
    url: '/mshInformation/information/list',
    method: 'get',
    params: query
  })
}

// 查询开店审核详细
export function getInformation(id) {
  return request({
    url: '/mshInformation/information/' + id,
    method: 'get'
  })
}

// 新增开店审核
export function addInformation(data) {
  return request({
    url: '/mshInformation/information',
    method: 'post',
    data: data
  })
}

// 修改开店审核
export function updateInformation(data) {
  return request({
    url: '/mshInformation/information',
    method: 'put',
    data: data
  })
}

// 删除开店审核
export function delInformation(id) {
  return request({
    url: '/mshInformation/information/' + id,
    method: 'delete'
  })
}
