<script setup>
import OpenURL from './OpenURL.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL :url='`https://github.com/${ProjectInfo.github}/`' icon='github' />
</template>
