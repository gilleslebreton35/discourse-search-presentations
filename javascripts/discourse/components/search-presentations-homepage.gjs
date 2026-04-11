import Component from "@glimmer/component";
import { action } from "@ember/object";

export default class SearchPresentationsHomepage extends Component {
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

    const form = event.target;
    const input = form.querySelector(".search-presentations__input");
    const userQuery = input?.value?.trim() || "";

    const scopedPart = this.categoriesQuery
      ? `categories:${this.categoriesQuery}`
      : "";

    const finalQuery = [userQuery, scopedPart].filter(Boolean).join(" ");

    window.location.href = `/search?q=${encodeURIComponent(finalQuery)}`;
  }

  <template>
    <div class="search-presentations">
      <form class="search-presentations__form" {{on "submit" this.submitSearch}}>
        <input
          class="search-presentations__input"
          type="search"
          placeholder={{this.placeholder}}
          aria-label={{this.placeholder}}
        />
        <button class="search-presentations__button" type="submit">
          {{this.buttonLabel}}
        </button>
      </form>
    </div>
  </template>
}
