import request from '@/utils/request'

// 查询商机管理列表
export function listMshOpportunity(query) {
  return request({
    url: '/mshOpportunity/mshOpportunity/list',
    method: 'get',
    params: query
  })
}

// 查询商机管理详细
export function getMshOpportunity(id) {
  return request({
    url: '/mshOpportunity/mshOpportunity/' + id,
    method: 'get'
  })
}

// 新增商机管理
export function addMshOpportunity(data) {
  return request({
    url: '/mshOpportunity/mshOpportunity',
    method: 'post',
    data: data
  })
}

// 修改商机管理
export function updateMshOpportunity(data) {
  return request({
    url: '/mshOpportunity/mshOpportunity',
    method: 'put',
    data: data
  })
}

// 删除商机管理
export function delMshOpportunity(id) {
  return request({
    url: '/mshOpportunity/mshOpportunity/' + id,
    method: 'delete'
  })
}
