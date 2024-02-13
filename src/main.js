import './assets/stars.css'
import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

//Vue.config.productionTip = false;

createApp(App)
  .component('font-awesome-icon', FontAwesomeIcon)
  .mount('#app')
//
