<script setup>
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import OpenDiscord from './components/Open/OpenDiscord.vue'
import OpenGitHub from './components/Open/OpenGitHub.vue'
import OpenWiki from './components/Open/OpenWiki.vue'
import ProjectInfo from './components/ProjectInfo.vue'
</script>

<script>
</script>

<template>
  <header>
    <!-- <img alt='Vue logo' class='logo' src='./assets/logo.svg' width='125' height='125' /> -->
    <img alt='Vue logo' class='logo' src='./assets/proxima1.gif' width='300' height='300' />

  </header>

  <main>
    <!-- <TheWelcome /> -->
    <div class='wrapper'>
      <HelloWorld :msg='`${ProjectInfo.name}`' />
    </div>
    <OpenDiscord />
    <OpenGitHub />
    <OpenWiki />
  </main>
</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    /* padding-right: calc(var(--section-gap) / 2); */
  }


  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
}
</style>
