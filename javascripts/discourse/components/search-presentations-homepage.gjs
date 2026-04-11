import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";

class SearchPresentationsHomepage extends Component {
  <template>
    <div>TEST RECHERCHE INLINE</div>
  </template>
}

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", SearchPresentationsHomepage);
});
