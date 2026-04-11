import { apiInitializer } from "discourse/lib/api";
import SearchPresentationsHomepage from "../components/search-presentations-homepage";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", SearchPresentationsHomepage);
});
