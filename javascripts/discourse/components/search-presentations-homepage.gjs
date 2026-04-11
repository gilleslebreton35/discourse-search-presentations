import Component from "@glimmer/component";
import { action } from "@ember/object";

export default class SearchPresentationsHomepage extends Component {
  @action
  submitSearch(event) {
    event.preventDefault();
    alert("submit ok");
  }

  <template>
    <div class="search-presentations">
      <form class="search-presentations__form" {{on "submit" this.submitSearch}}>
        <input
          class="search-presentations__input"
          type="search"
          placeholder="Rechercher dans les présentations"
          aria-label="Rechercher dans les présentations"
        />
        <button class="search-presentations__button" type="submit">
          Rechercher
        </button>
      </form>
    </div>
  </template>
}
