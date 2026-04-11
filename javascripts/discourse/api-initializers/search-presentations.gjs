import { apiInitializer } from "discourse/lib/api";
import OrangeBanner from "../components/orange-banner";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", OrangeBanner);
});
