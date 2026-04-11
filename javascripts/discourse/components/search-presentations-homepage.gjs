import { apiInitializer } from "discourse/lib/api";
import Component from "@glimmer/component";

class SearchPresentationsHomepage extends Component {
  <template>
    <div style="padding: 1rem; background: orange; color: black;">
      COMPOSANT INLINE OK
    </div>
  </template>
}

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", SearchPresentationsHomepage);
});
