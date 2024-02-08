
<script setup lang="ts">
import { library } from '@fortawesome/fontawesome-svg-core'
import {
  faGithub,
  faWikipediaW,
  faDiscord
} from '@fortawesome/free-brands-svg-icons'

import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import OpenDiscord from './components/Open/OpenDiscord.vue'
import OpenGitHub from './components/Open/OpenGitHub.vue'
import OpenWiki from './components/Open/OpenWiki.vue'
import ProjectInfo from './components/ProjectInfo.vue'
import SocialMediaLinks from "./components/SocialMediaLinks.vue"

library.add(
  faGithub,
  faWikipediaW,
  faDiscord
)
</script>

<script>
</script>

<template>
  <header>
    <!-- <video autoplay muted loop width='467' height='467' poster='@/assets/proxima4.png'>
      <source alt='Vue logo' class='logo' src='./assets/proxima5.webm' type='video/webm' />
    </video> -->

    <!-- <div class="circular" v-bind:style="{ 'background-image': 'url(' + './assets/proxima5.webm' + ')' }"></div> -->

    <div class="container wrapper">
      <video autoplay muted loop width='467' height='467' poster='@/assets/proxima4.png'>
        <source alt='Vue logo' class='logo' src='./assets/proxima5.webm' type='video/webm' />
      </video>
      <video playsinline autoplay muted loop width='467' height='467' poster='@/assets/proxima4.png' id="bgvideo" >
        <source src='@/assets/proxima5.webm' type='video/webm'>
      </video>
      <HelloWorld class="centered" :msg='`${ProjectInfo.name}`' />
    </div>
  </header>

  <main>
    <!-- <TheWelcome /> -->

    <!--
      https://fontawesome.com/docs/web/troubleshoot/#why-are-my-animated-icons-not-animating
      https://fontawesome.com/v6/docs/web/style/animate
    -->

    <!-- <font-awesome-icon class="icon alt" fixed-width font-size=8em :icon="['fab', 'discord']" beat /> -->
    <!-- <div class="icon alt" fixed-width style="font-size: 8em; --fa-animation-duration: 5s; --fa-beat-scale: 0.9; margin-left: 10px;" > -->
    <div class="icon alt" fixed-width style="font-size: 8em; margin-left: 10px;" >
      <OpenDiscord />
      <OpenGitHub />
      <OpenWiki />
    </div>
    <!-- <SocialMediaLinks title="@hrwebdevelopers" description="We build blazing-fast, beautiful websites for startups, small businesses and enterprises." /> -->
  </main>
</template>

<style scoped>

/* Container holding the image and the text */
.container {
  position: relative;
  text-align: center;
}

/* Centered text */
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

</style>
