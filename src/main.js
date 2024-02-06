import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

import { library } from '@fortawesome/fontawesome-svg-core'
import {
  faTwitter,
  faFacebook,
  faStackOverflow,
  faGithub
} from '@fortawesome/free-brands-svg-icons'
library.add(faTwitter, faFacebook, faStackOverflow, faGithub)
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

//Vue.config.productionTip = false;

createApp(App)
  .component('font-awesome-icon', FontAwesomeIcon)
  .mount('#app')
//
