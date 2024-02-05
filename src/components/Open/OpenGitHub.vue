<script setup>
import OpenURL from './OpenURL.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL display='GitHub' :url='`https://github.com/${ProjectInfo.github}/`' />
</template>
