<script setup>
defineProps({
  url:  {type: String, required: true},
  icon: {type: String, required: true}
})
</script>

<template>
  <a :href='`${url}`' target="_blank" rel="noreferrer">
    <font-awesome-icon :icon="['fab', `${icon}`]" />
  </a>
</template>
