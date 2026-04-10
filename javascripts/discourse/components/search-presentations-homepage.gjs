import Component from "@glimmer/component";
import { service } from "@ember/service";
import { action } from "@ember/object";
import { dIcon } from "discourse-common/helpers/d-icon";

export default class SearchPresentationsHomepage extends Component {
  @service router;

  // On récupère les réglages du thème (assurez-vous qu'ils existent dans settings.yml)
  get placeholder() {
    return settings.search_placeholder || "Rechercher dans les présentations";
  }

  get buttonLabel() {
    return settings.search_button_label || "Rechercher";
  }

  get categoriesQuery() {
    return [
      settings.search_category_1,
      settings.search_category_2,
      settings.search_category_3,
    ]
      .map((value) => (value || "").trim())
      .filter(Boolean)
      .join(",");
  }

  @action
  submitSearch(event) {
    event.preventDefault();
    const input = event.target.querySelector(".search-presentations__input");
    const userQuery = input?.value?.trim() || "";

    if (!userQuery) return;

    // Utilisation de #category:slug ou category:slug selon la version
    const scopedPart = this.categoriesQuery
      ? `category:${this.categoriesQuery}`
      : "";

    const finalQuery = [userQuery, scopedPart].filter(Boolean).join(" ");
    
    // Redirection vers la page de recherche
    window.location.href = `/search?q=${encodeURIComponent(finalQuery)}`;
  }

  <template>
    <div class="search-presentations-container">
      <form {{on "submit" this.submitSearch}} class="search-presentations__form">
        <input
          type="text"
          placeholder={{this.placeholder}}
          class="search-presentations__input"
        />
        <button type="submit" class="btn btn-primary search-presentations__button">
          {{dIcon "search"}}
          <span class="label">{{this.buttonLabel}}</span>
        </button>
      </form>
    </div>
  </template>
}
