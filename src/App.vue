
<script setup lang="ts">
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import OpenDiscord from './components/Open/OpenDiscord.vue'
import OpenGitHub from './components/Open/OpenGitHub.vue'
import OpenWiki from './components/Open/OpenWiki.vue'
import ProjectInfo from './components/ProjectInfo.vue'
import SocialMediaLinks from "./components/SocialMediaLinks.vue"

</script>

<script>
</script>

<template>
  <header>
    <video autoplay muted loop width='500' height='500'>
      <source alt='Vue logo' class='logo' src='./assets/proxima5.webm' type='video/webm' />
    </video>
  </header>

  <main>
    <!-- <TheWelcome /> -->
    <div class='wrapper'>
      <HelloWorld :msg='`${ProjectInfo.name}`' />
    </div>
    <OpenDiscord />
    <OpenGitHub />
    <OpenWiki />
    <font-awesome-icon :icon="['fab', 'twitter']" class="icon alt"/>
    <font-awesome-icon :icon="['fab', 'github']" class="icon alt" />
    <!-- <SocialMediaLinks title="@hrwebdevelopers" description="We build blazing-fast, beautiful websites for startups, small businesses and enterprises." /> -->
  </main>
</template>

<style scoped>

</style>
