import Component from "@glimmer/component";

export default class SearchPresentationsHomepage extends Component {
  <template>
    <div class="search-presentations">
      <form class="search-presentations__form">
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
