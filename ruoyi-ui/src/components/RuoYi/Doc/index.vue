<template>
  <div>
  </div>
</template>

<script>
export default {
  name: 'RuoYiDoc',
  data() {
    return {
      url: 'http://doc.ruoyi.vip/ruoyi-vue'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>