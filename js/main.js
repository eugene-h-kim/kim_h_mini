// import components first!!!
import MiniThumb from './components/TheThumbnail.js';
import LightBox from './components/TheLightbox.js';

(()=> {
	// stub - your code goes here
	const { createApp } = Vue

	createApp({
		created() {
				// get your remote data here 
				// fetch('./scripts/json.php')
				fetch('./data/data.json')
					.then(res => res.json()) // convert the data into a plain js object
					.then(data => this.miniData = data) // convert to things we can use
				.catch(error => {
					console.error(error);
					document.querySelector(".error").style.display = "block"
				});
		},

		data() {
				return {
					miniData: {},
					lbData: {},
					showLB: false
				}
		},

		components: {
				theminithumb: MiniThumb,
				thelightbox: LightBox
		},

		methods: {
			loadLightbox(mini) {
				// set the lightbox data/ render it
				this.lbData = mini;

				//show the lightbox
				if (document.querySelector(".info-container")) {
					// check if the same model is clicked again; if yes, close the lightbox; else, open the new selection
					if(document.querySelector(".info-container").textContent.includes(this.lbData.price)){
							this.showLB = false;
					} else {
							this.showLB = true;
					};
				} else {
					this.showLB = true;
				}
			}
		}
	}).mount('#app')
})();
