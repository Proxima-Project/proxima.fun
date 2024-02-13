import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
//import dns from 'dns'

//dns.setDefaultResultOrder('verbatim')

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
  ],

  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },

  clearScreen: false,
  server: {
    host: '0.0.0.0',  // OK
    //host: true,  // OK
    //host: 'localhost',  // NOT FOR PUBLIC
    //port: 8080,  // CRITICAL
    port: 80,  // CRITICAL
    clientPort: 80,
    //https: false,  // UNKNOWN
    strictPort: true,  // OK
    //hmr: false
    hmr: {
      //host: 'localhost',  // CRITICAL, OK
      //host: true,  // LOOP
      //host: '0.0.0.0',  // LOOP
      //protocol: 'ws',  // OK
      //protocol: 'wss',  // LOOP
      port: 443,  // OK
      //Port: 443,  // OK
      //port: 3000,
      //clientPort: 3001,
      clientPort: 443,  // LOOP
    },
  }
})
