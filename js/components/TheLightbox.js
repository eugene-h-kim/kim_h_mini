export default {
   name: 'TheLightboxComponent',

   props: {
      mini: Object
   },

   template: `
   <div class="info-container">
      <div class="info-text">
         <div class="models-basic">
            <div>
               <h3>2023 MINI {{mini.name}}</h3>
               <p>Price: {{mini.price}}</p>
            </div>

            <div class="text-wrapper">
               <div><p><span>Lease</span><br>{{mini.lease}}</p></div>
               <div><p><span>Finance</span><br>{{mini.finance}}</p></div>
            </div>
         </div>

         <div class="models-features">
            <ul>
               <li v-for="feature in mini.features">
                  {{ feature }}
               </li>
            </ul>
         </div>
      </div>

      <div class="info-img">
         <img :src='"images/" + mini.pic' alt="vehicle image">
      </div>
   </div>
   `,

}

