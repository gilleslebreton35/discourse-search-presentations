import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  api.renderInOutlet(
    "above-main-container",
    <template>
      <div style="padding: 1rem; background: green; color: white;">
        TEST INITIALIZER OK
      </div>
    </template>
  );
});