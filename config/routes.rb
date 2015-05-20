Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  localized do
    for page in %i(about clients contact manage media privacy system testpage) do
      get page, to: "pages\##{page}"
    end
  end
end
