<script setup>
import OpenURL from './OpenURL.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL :url='`https://discord.gg/${ProjectInfo.discord}`' icon='discord' />
</template>
