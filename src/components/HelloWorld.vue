<template>
	<div class="hello">
	<div class="box">
	  <div class="columns">
 	    <div class="column" v-for="w in weather">
	      <div class="card">
	        <div class="card-image">
	          <figure class="image is-4by3">
                <img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image">
	          </figure>
	        </div>
	        <div class="content">
	          {{ w.daily.data[0].summary }}
            </div>
	        <br>
	      </div>
	    </div>
	  </div>
	  </div>
	</div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'HelloWorld',
  data() {
    return {
      msg: 'Hello to Your Vue.js App',
      weather: [],
    };
  },
  created() {
    axios.get('https://b.blnk.io/')
    .then((response) => {
      // JSON responses are automatically parsed.
      this.weather = response.data;
    })
    .catch((e) => {
      this.errors.push(e);
    });
  },
};
</script>
