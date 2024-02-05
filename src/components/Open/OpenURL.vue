<script setup>
defineProps({
  display: {
    type: String,
    required: true
  },
  url: {
    type: String,
    required: true
  },
  is_https: {
    type: Boolean,
    required: false,
    default: true
  },
})
</script>

<script>
export default {
  methods: {
    openURL(url, is_https) {
      // this will replace the 'https' only if it is at the beginning
      if (!is_https) url = url.replace(/\b(https:)/, 'http:');
      //console.debug(url, is_https);
      window.open(url, '_blank', 'noreferrer');
    },
  },
};
</script>

<template>
  <button type='button' @click='openURL(url, is_https)'>{{ display }}</button>
</template>

<style scoped>
</style>
