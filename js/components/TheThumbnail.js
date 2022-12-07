export default {
   name: "TheMiniThumb",

   props: {
      mini: Object
   },

   template: `
   <div @click="loadLBData" class="models-img">
      <img :src='"images/" + mini.pic' alt="vehicle image" style="width:200px;">
      <p>{{mini.name}}</p>
      <i class="fa-solid fa-chevron-down arrow" ref="downarrow"></i>
   </div>
   `,

   methods: {
      loadLBData() {
         this.$emit('loadlbdata', this.mini);
      }
   }
}
