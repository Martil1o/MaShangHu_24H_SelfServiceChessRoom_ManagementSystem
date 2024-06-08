import request from '@/utils/request'

// 查询加盟审核列表
export function listMshInformationF(query) {
  return request({
    url: '/mshInformationF/mshInformationF/list',
    method: 'get',
    params: query
  })
}

// 查询加盟审核详细
export function getMshInformationF(id) {
  return request({
    url: '/mshInformationF/mshInformationF/' + id,
    method: 'get'
  })
}

// 新增加盟审核
export function addMshInformationF(data) {
  return request({
    url: '/mshInformationF/mshInformationF',
    method: 'post',
    data: data
  })
}

// 修改加盟审核
export function updateMshInformationF(data) {
  return request({
    url: '/mshInformationF/mshInformationF',
    method: 'put',
    data: data
  })
}

// 删除加盟审核
export function delMshInformationF(id) {
  return request({
    url: '/mshInformationF/mshInformationF/' + id,
    method: 'delete'
  })
}
