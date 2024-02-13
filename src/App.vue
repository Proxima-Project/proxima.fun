
<script setup lang='ts'>
import { library } from '@fortawesome/fontawesome-svg-core'
import {
  faGithub,
  faWikipediaW,
  faDiscord
} from '@fortawesome/free-brands-svg-icons'
import {faHandHoldingHeart} from '@fortawesome/free-solid-svg-icons'

import ProjectInfo from './components/ProjectInfo.vue'

import OpenDiscord from './components/Open/OpenDiscord.vue'
import OpenGitHub from './components/Open/OpenGitHub.vue'
import OpenWiki from './components/Open/OpenWiki.vue'
import OpenSponsorship from './components/Open/OpenSponsorship.vue'

import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import SocialMediaLinks from './components/SocialMediaLinks.vue'

library.add(
  faDiscord,
  faGithub,
  faWikipediaW,
  faHandHoldingHeart
)
</script>

<script>
</script>

<template>
  <header>
    <!-- <video autoplay muted loop width='467' height='467' poster='@/assets/proxima4.png'>
      <source alt='Vue logo' class='logo' src='./assets/proxima5.webm' type='video/webm' />
    </video> -->

    <!-- <div class='circular' v-bind:style='{ 'background-image': 'url(' + './assets/proxima5.webm' + ')' }'></div> -->

    <div class='container wrapper'>
      <!-- <video autoplay muted loop width='467' height='467' poster='./assets/SS13/Proxima/proxima7-BoS.png' id='bgvideo'>
        <source alt='Vue logo' class='logo' src='./assets/SS13/Proxima/proxima8-BoS.webm' type='video/webm' />
      </video> -->

      <video playsinline autoplay muted loop width='467' height='467' poster='./assets/SS13/Proxima/proxima7-BoS.png' >
        <source alt='Vue logo' class='logo' src='./assets/SS13/Proxima/proxima8-BoS.webm' type='video/webm' />
      </video>

      <!-- <div class="greetings">
        <h1 class="green"><a href="https://en.wikipedia.org/wiki/Proxima_Centauri" target="_blank" rel="noopener">{{ ProjectInfo.name }}</a></h1>
      </div> -->

      <HelloWorld class='centered' :msg='`${ProjectInfo.name}`' />
    </div>

  </header>

  <main>
    <!-- <TheWelcome /> -->

    <!--
      https://fontawesome.com/docs/web/troubleshoot/#why-are-my-animated-icons-not-animating
      https://fontawesome.com/v6/docs/web/style/animate
    -->

    <!-- <font-awesome-icon class='icon alt' fixed-width font-size=8em :icon='['fab', 'discord']' beat /> -->
    <!-- <div class='icon alt' fixed-width style='font-size: 8em; --fa-animation-duration: 5s; --fa-beat-scale: 0.9; margin-left: 10px;' > -->
    <div class='icon alt' fixed-width >
      <OpenDiscord />
      <OpenGitHub />
      <OpenWiki />
      <OpenSponsorship />
    </div>
    <!-- <SocialMediaLinks title='@hrwebdevelopers' description='We build blazing-fast, beautiful websites for startups, small businesses and enterprises.' /> -->
  </main>

  <footer>
    <h4>
      powered by
      <a href="https://vitejs.dev/" target="_blank" rel="noopener">Vite</a> &
      <a href="https://vuejs.org/" target="_blank" rel="noopener">Vue 3</a>
    </h4>
  </footer>
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

h1, div { text-shadow:
  black 0px 1px 20px, black 0px 1px 20px,
  black 0px 1px 20px, black 0px 1px 20px;
}

footer {
  position:fixed;bottom:0;left:0;right:0;height:30px;
}

</style>
