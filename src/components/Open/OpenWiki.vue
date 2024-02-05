<script setup>
import OpenURL from './OpenURL.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL display='Wiki' :url='`https://${ProjectInfo.wiki}/`' />
</template>
