<script setup>
import OpenURL from './OpenURL2.vue'
import ProjectInfo from './../ProjectInfo.vue'
</script>

<template>
  <OpenURL :url='`https://donationalerts.com/r/${ProjectInfo.sponsorship}/`' icon='hand-holding-heart' />
</template>
