import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    data: {
      humburger: false 
    },
    methods: {
      show: function() {
        this.humburger = true;
      }
    },
    components: { App }
  })
})