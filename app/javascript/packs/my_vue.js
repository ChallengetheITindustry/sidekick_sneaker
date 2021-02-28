import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
const vue = new Vue({
  el: '#app',
  data: {
    gnav: false
  },
  methods: {
    show: (e) => {
      let elm = e.currentTarget;
      let className = elm.className;
      const body = document.getElementById('hidden')
      if (className.indexOf('is-open') != -1) {
        vue.$data.gnav = false;
        elm.className = 'button';
        body.className -= " non-scroll ";
      } else {
        vue.$data.gnav = true;
        elm.className += " is-open";
        body.className += " non-scroll ";
      }
    }
  }
})
})