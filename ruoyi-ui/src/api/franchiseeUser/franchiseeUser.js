import request from '@/utils/request'

// 查询加盟商管理列表
export function listFranchiseeUser(query) {
  return request({
    url: '/franchiseeUser/franchiseeUser/list',
    method: 'get',
    params: query
  })
}

// 查询加盟商管理详细
export function getFranchiseeUser(userId) {
  return request({
    url: '/franchiseeUser/franchiseeUser/' + userId,
    method: 'get'
  })
}

// 新增加盟商管理
export function addFranchiseeUser(data) {
  return request({
    url: '/franchiseeUser/franchiseeUser',
    method: 'post',
    data: data
  })
}

// 修改加盟商管理
export function updateFranchiseeUser(data) {
  return request({
    url: '/franchiseeUser/franchiseeUser',
    method: 'put',
    data: data
  })
}

// 删除加盟商管理
export function delFranchiseeUser(userId) {
  return request({
    url: '/franchiseeUser/franchiseeUser/' + userId,
    method: 'delete'
  })
}
