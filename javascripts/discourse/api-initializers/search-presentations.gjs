import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", <template>TEST DIRECT</template>);
});
