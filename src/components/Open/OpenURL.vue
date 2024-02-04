<script setup>
defineProps({
  display: {
    type: String,
    required: true
  },
  url: {
    type: String,
    required: true
  }
})
</script>

<script>
export default {
  methods: {
    openURL(url) {
      window.open(url, '_blank', 'noreferrer');
    },
  },
};
</script>

<template>
  <button type='button' @click='openURL(url)'>{{ display }}</button>
</template>

<style scoped>
</style>
