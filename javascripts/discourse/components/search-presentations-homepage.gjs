import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class SearchPresentationsHomepage extends Component {
  @service router;

  get isHomepage() {
    return this.router.currentURL === "/";
  }

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

  submitSearch = (event) => {
    event.preventDefault();

    const input = event.target.querySelector(".search-presentations__input");
    const userQuery = input?.value?.trim() || "";

    const scopedPart = this.categoriesQuery
      ? `categories:${this.categoriesQuery}`
      : "";

    const finalQuery = [userQuery, scopedPart].filter(Boolean).join(" ");

    window.location.href = `/search?q=${encodeURIComponent(finalQuery)}`;
  };
}