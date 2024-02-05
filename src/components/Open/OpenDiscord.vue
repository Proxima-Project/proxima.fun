<script setup>
import OpenURL from './OpenURL.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL display='Discord' :url='`https://discord.gg/${ProjectInfo.discord}`' />
</template>
